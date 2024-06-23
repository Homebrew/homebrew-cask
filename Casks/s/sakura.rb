cask "sakura" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.1"
  sha256 arm:   "a66c6debedf266a248e18e5c951f33c3e7b9b3f7f26c1354dd5eb8cb8421f323",
         intel: "6aa386c8e07e2d9ae7e7873d1acb1dcaabdda12034fb3314276f17aba5ff75e1"

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
