cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.10"
  sha256 arm:   "bbd51146cd1285da77c75a4a9d649f9973308408d89b3e3306bcef7aa972c688",
         intel: "a8f2ba3dcd6ae07129ac2238846bd1f7bdacfdca8c304a31c4d803e8d6abff9d"

  url "https://github.com/reqable/reqable-app/releases/download/#{version}/reqable-app-macos-#{arch}.dmg",
      verified: "github.com/reqable/reqable-app/"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

  auto_updates true
  depends_on macos: :big_sur

  app "Reqable.app"

  uninstall_postflight_steps do
    delete_keychain_certificates "Reqable Proxy"
  end

  zap trash: [
    "~/Library/Caches/Reqable",
    "~/Library/Preferences/com.reqable.macosx.plist",
  ]
end
