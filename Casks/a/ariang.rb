cask "ariang" do
  arch arm: "arm64", intel: "x64"

  version "1.3.13"
  sha256 arm:   "74e6f3ab32cb0b7a2e96bae671514ce35e3c22346e1e4f90383840a5eb2ee0c4",
         intel: "b9d4e1c8d077a22d58c2a0cd09816a8b99ff4a59a9280a13f4a98d004dcbc1a4"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-#{arch}.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "AriaNg Native.app"

  zap trash: [
    "~/Library/Preferences/net.mayswind.ariang.plist",
    "~/Library/Saved Application State/net.mayswind.ariang.savedState",
  ]
end
