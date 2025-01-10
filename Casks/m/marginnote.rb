cask "marginnote" do
  version "4.1.13"
  sha256 "9cc179c96ef7dde17c04e97f3c65d23f0730ea67f2a7053ce32993585a5a4b6d"

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
