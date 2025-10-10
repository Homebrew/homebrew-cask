cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "25.08.2"
  sha256 arm:   "76b1569701e2d2f5b9c76358029de1c4b42ec1349fe0e2009598881694c799c2",
         intel: "0772bb479538e2aaa2d0cadcf6f815ab2a856b654938af7a6933902cdd22b09c"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.csv.first.major_minor}/macOS/kdenlive-#{version.csv.first}-#{arch}#{"_#{version.csv.second}" if version.csv.second}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)-#{arch}(?:[._-]([A-Z]?))?\.dmg/i)
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
