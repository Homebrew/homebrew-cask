cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "26.08.0"
  sha256 arm:   "a49e253d40bb63bb0f23e0335b484ff4b27e5533e178efb4d5ac44398edd401e",
         intel: "1afb6d529cfbb61063b5e00b8b9fce6df58db155fd6a9f10edb27450927f0c8d"

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
