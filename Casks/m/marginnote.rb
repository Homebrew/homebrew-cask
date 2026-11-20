cask "marginnote" do
  version "5.0.2"
  sha256 "1d199737786c6d131680605efecfbdd559524f9b4bc3f5f9300ab386566d8902"

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
