cask "marginnote" do
  version "5.0.1"
  sha256 "e5dd3f321523edacb8ffac13d50175f902656876bcdaa44f21aabd55de924210"

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
