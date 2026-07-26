cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.15"
  sha256 arm:   "195c1e691de0a8aa16fdbe0a153d43283ff68371c353be6b8059ba0a40a71dea",
         intel: "5b80a6e3b55917f6904feb5815349fde7091e1a5252dd27eea495a35b66b2290"

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
