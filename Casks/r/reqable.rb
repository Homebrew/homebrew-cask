cask "reqable" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.11"
  sha256 arm:   "3c79027b09b14a16b92934b5884a8e102473d1e3f5b4717ee17596eff907f7f2",
         intel: "5152a3f3ebb50e712564eb93b69712eb43cdb12d50c668ba8c1d8da577a45893"

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
