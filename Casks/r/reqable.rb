cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.8"
  sha256 arm:   "3d4ec6a3729a9af1023665f87b8d8189cacae15156bae0c3e33cb86d759bd0b7",
         intel: "8c2b095e4ffc2fd85a6ecd9fa738b3f20bd2d3eded2c6c1e20315b3f36034301"

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
