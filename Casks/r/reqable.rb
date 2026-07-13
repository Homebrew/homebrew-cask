cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.7"
  sha256 arm:   "9c6bc39c9a12dd329a380522677abba33f1d1bb296e4253d91c7d9b72cff6761",
         intel: "27a8ac521d222388d9a9b31f65fc5cc096501a8b050cd57a8d7d5223f28d92da"

  url "https://github.com/reqable/reqable-app/releases/download/#{version}/reqable-app-macos-#{arch}.dmg",
      verified: "github.com/reqable/reqable-app/"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

  auto_updates true
  depends_on macos: :big_sur

  app "Reqable.app"

  uninstall_postflight_steps do
    delete_keychain_certificate "Reqable Proxy"
  end

  zap trash: [
    "~/Library/Caches/Reqable",
    "~/Library/Preferences/com.reqable.macosx.plist",
  ]
end
