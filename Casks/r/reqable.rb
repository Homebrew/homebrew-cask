cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.14"
  sha256 arm:   "0b24ae1b7306fb81c1678acd69c8fdcac110f5d6000dccc5cbcf4c011835f32b",
         intel: "a39d765ff11cd929baf579a09419e3f89e0ee4b4f845c6bbf47a5ae993d97055"

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
