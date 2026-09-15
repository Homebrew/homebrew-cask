cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "26.08.1"
  sha256 arm:   "b606beaf42c0482a07c052bd2da384587b3aedcc948e7c885f954e195ff10bda",
         intel: "1c7a9fa703d8357aaf40d5a74f7aa41b36aee4504926d03d929907d076583d82"

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
