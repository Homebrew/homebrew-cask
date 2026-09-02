cask "sakura" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.0"
  sha256 arm:   "ecc60a99c75b3c83e35c7a9c470576dd27e80b30bbe0d91255341fec69df8957",
         intel: "9083d65ccc3be16bbe667edcd3d67120404e395a39202cf680483d685e0a248d"

  url "https://nya.globalslb.net/natfrp/client/launcher-macos/#{version}/SakuraLauncher_macOS_#{arch}.dmg"
  name "SakuraLauncher"
  desc "Launcher of SakuraFrp"
  homepage "https://www.natfrp.com/tunnel/download"

  livecheck do
    url "https://nya.globalslb.net/natfrp/client/launcher-macos/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "SakuraLauncher.app"

  zap trash: [
    "~/Library/Application Scripts/com.natfrp.launcher.ui",
    "~/Library/Containers/com.natfrp.launcher.ui",
  ]
end
