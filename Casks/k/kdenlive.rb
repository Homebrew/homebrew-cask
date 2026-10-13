cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "26.08.2"
  sha256 arm:   "ffcbff6d6e6651fe7a7cd2b00cb7304c8ef049da8287c389dbda146d5e8928ac",
         intel: "45e07f190581eeba8e87a12d2e879b3f754a83df19787dc9fdea389a51259b33"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.csv.first.major_minor}/macOS/kdenlive-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)(?:[._-]([A-Z]?))?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[1] ? "#{match[0]},#{match[1]}" : match[0] }
    end
  end

  depends_on macos: :ventura

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenlive-layoutsrc",
    "~/Library/Preferences/kdenliverc",
    "~/Library/Preferences/org.kde.Kdenlive.plist",
  ]
end
