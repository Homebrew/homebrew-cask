cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.13"
  sha256 arm:   "69d8e38a283e2efc15175d16773640a20351e193abfcaa2588bbd946367e76ec",
         intel: "d3638530bdc511b1d3f5207226275d353604f3af870959a7faab9f17f8142703"

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
