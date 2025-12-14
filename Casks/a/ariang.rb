cask "ariang" do
  arch arm: "arm64", intel: "x64"

  version "1.3.12"
  sha256 arm:   "a8c6b4e7c4bfabe9d24e1ffcf54b5d13a7d5124023b512cbcf3a4dd9770b7fdc",
         intel: "dc8a00c9d49f5346a376dc833debc7673e914d86a822da4b00ab6d160b68f31b"

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
