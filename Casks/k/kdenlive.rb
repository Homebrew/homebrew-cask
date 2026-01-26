cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "25.12.1"
  sha256 arm:   "b32f56785ebb721c03d4716852facd4c8ada7f4505e78bfbd021beb7a627b938",
         intel: "033a61a85812dacf2bd36bb6800315f1594afa09c0514e97f0bb68c652f1114e"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.csv.first.major_minor}/macOS/kdenlive-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
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

  depends_on macos: ">= :big_sur"

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenlive-layoutsrc",
    "~/Library/Preferences/kdenliverc",
    "~/Library/Preferences/org.kde.Kdenlive.plist",
  ]
end
