cask "marginnote" do
  version "5.0.3"
  sha256 "72bd7b7c96d095b43a16c23f5dd038e22bca2af79ed9077ddf11ae94de92b632"

  url "https://dist.marginnote.cn/MarginNote#{version}.dmg"
  name "MarginNote"
  desc "E-reader"
  homepage "https://www.marginnote.com/"

  livecheck do
    url "https://dist.marginnote.cn/marginnote4.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/QReader.MarginStudy.easy",
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudy.easy",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end
