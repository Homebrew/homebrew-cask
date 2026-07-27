cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.16"
  sha256 arm:   "427e4c835781a0ea8762a46986e07b39cce432b75e1b4ce6459afbe573aaf8a1",
         intel: "56856be6aacd35d507fa9a3d882e6d953730a547f74caee4b0ac28d00f2a897e"

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
