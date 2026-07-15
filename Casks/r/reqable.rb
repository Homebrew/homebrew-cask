cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.9"
  sha256 arm:   "63fe853136f534f8bb9eef5b2cc5a2a8730687ea1a46c0252c8fa52807344eba",
         intel: "e9f25ce98467c58ef702f0856fbc9989cd98a030b5b41c4cf0c9cd843effd3d4"

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
