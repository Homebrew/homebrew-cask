cask "marginnote" do
  version "4.4.2"
  sha256 "5465e443962b98bd304240358d21ecb20cdc47b9d6be1e5e45dbd79b164fb6ad"

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
  depends_on macos: :sonoma

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end
