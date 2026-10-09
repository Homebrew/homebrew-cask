cask "harbordrop" do
  version "1.4.15"
  sha256 "5bcbfce82c27f3fe7ecd12b24fde4a5d7fbb290d9ad67d09c1244c0421209fe8"

  url "https://github.com/hjm79/harbordrop-release/releases/download/v#{version}/HarborDrop.dmg"
  name "HarborDrop"
  desc "Download manager with browser integration"
  homepage "https://vesslo.top/harbordrop"

  livecheck do
    url "https://vesslo.top/harbordrop-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "HarborDrop.app"

  uninstall quit: "com.hjm.harbordrop"

  zap trash: [
    "~/Library/Caches/com.hjm.harbordrop",
    "~/Library/HTTPStorages/com.hjm.harbordrop",
  ]
end
