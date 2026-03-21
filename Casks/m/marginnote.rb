cask "marginnote" do
  version "4.3.1"
  sha256 "71abaab560732c4dbf1dcccc20fca54c3334aca3f967745bc0f7c7edde4dd8b8"

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
  depends_on macos: ">= :sonoma"

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end
