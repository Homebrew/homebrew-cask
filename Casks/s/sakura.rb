cask "sakura" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.0"
  sha256 arm:   "0a7088d451ba773116974282fbce58fe52ce55c99a0af56261d5c0d6bfdae7c4",
         intel: "957aee44b91b7633553660d768ded045f20329e43c7d3dc810e4042c72f626b7"

  url "https://nya.globalslb.net/natfrp/client/launcher-macos/#{version}/SakuraLauncher_macOS_#{arch}.dmg",
      verified: "nya.globalslb.net/natfrp/client/launcher-macos/"
  name "SakuraLauncher"
  desc "Launcher of SakuraFrp"
  homepage "https://www.natfrp.com/tunnel/download"

  livecheck do
    url "https://nya.globalslb.net/natfrp/client/launcher-macos/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SakuraLauncher.app"

  zap trash: [
    "~/Library/Application Scripts/com.natfrp.launcher.ui",
    "~/Library/Containers/com.natfrp.launcher.ui",
  ]
end
