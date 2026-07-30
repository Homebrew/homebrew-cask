cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.17"
  sha256 arm:   "dacc72b8966b3c5f0009de13f5b5d8d5b6b8faf903c48ae3d6e29b3781f0f62d",
         intel: "d22677fc198bf3cc229417a6b87a009c4f2346d522c6f8dcde4d851a6d11a32b"

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
    "~/Library/Application Support/com.reqable.macosx",
    "~/Library/Caches/Reqable",
    "~/Library/Preferences/com.reqable.macosx.plist",
  ]
end
