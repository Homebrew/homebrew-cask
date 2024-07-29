cask "sakura" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.2"
  sha256 arm:   "c423bb31d1b927dbac872b1d9c168d4dd3789ee59fa4aa5671fe2ed8b23598b8",
         intel: "72428f4220e8da3d7d5b8aa10b0e8f0fc57ea8f68b7e08011338f0cc77aee8f5"

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
