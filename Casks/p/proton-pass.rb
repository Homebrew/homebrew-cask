cask "proton-pass" do
  version "1.17.5"
  sha256 "2331a0974c047c0115b9ad76db16ca5d0a4b65987bd84b2bdcb1aeef1c9d198b"

  url "https://proton.me/download/PassDesktop/darwin/universal/ProtonPass_#{version}.dmg"
  name "Proton Pass"
  desc "Desktop client for Proton Pass"
  homepage "https://proton.me/pass"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Proton Pass.app"

  zap trash: [
    "~/Library/Application Support/Proton Pass",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/me.proton.pass.electron.sfl3",
    "~/Library/Caches/me.proton.pass.electron.ShipIt",
    "~/Library/HTTPStorages/me.proton.pass.electron",
    "~/Library/Logs/Proton Pass",
    "~/Library/Preferences/me.proton.pass.electron.plist"
  ]
end
