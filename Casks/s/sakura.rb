cask "sakura" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.8"
  sha256 arm:   "874256ff67f9f70ee64cf4a6e22010929ae1baba7a93e0e8b8069bd41b19f5c1",
         intel: "0d657c20de7e363139600dd1a705d3a90c01f0fd3b0d42628c12a5508b69fcc7"

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
  depends_on macos: :ventura

  app "SakuraLauncher.app"

  zap trash: [
    "~/Library/Application Scripts/com.natfrp.launcher.ui",
    "~/Library/Containers/com.natfrp.launcher.ui",
  ]
end
