cask "marginnote" do
  version "4.1.12"
  sha256 "cdf2119abde6537a9f4923ab48ceee30346a9d99d627de928f1f06ea4d685758"

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
