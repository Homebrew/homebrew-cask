cask "marginnote" do
  version "4.1.8"
  sha256 "a2e348e8d3ee93e24fdf71b8f9a43aec70ad63e670d08f8f3276181485a982bb"

  url "https://dist.marginnote.cn/MarginNote#{version}.dmg",
      verified: "marginnote.cn/"
  name "MarginNote"
  desc "E-reader"
  homepage "https://www.marginnote.com/"

  livecheck do
    url "https://dist.marginnote.cn/marginnote#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end
