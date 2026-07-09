cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.5"
  sha256 arm:   "4bb73c2797ca6f6c4c4a5f638a6e7ee4592d05bb02adeecac3e55ce2b514ff3c",
         intel: "5bfa0ade24c937c36589282b7f762f5d90cb3865fae3dcfa5065e0a733a43e48"

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
