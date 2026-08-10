cask "deviceshelf" do
  version "1.9.6"
  sha256 "46a49b97459c2b6c47d1c27e36eac9a3cada76717daa3e5dc26699e93418210a"

  # No `verified:` — the parameter is deprecated and CI rejects it. The URL is
  # on our own host and needs no vouching for a different one.
  url "https://downloads.deviceshelf.app/DeviceShelf-#{version}.dmg"
  name "DeviceShelf"
  desc "Scanner for devices, open ports and security risk on the local network"
  homepage "https://deviceshelf.app/"

  livecheck do
    url "https://deviceshelf.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # No version floor on purpose. The app runs on 10.13 and up, which is older
  # than anything Homebrew still recognises: its oldest symbol is :catalina
  # (10.15) and :high_sierra was removed, so naming one would claim a
  # requirement we do not have.
  depends_on :macos

  app "DeviceShelf.app"

  # The /Library path is installed by the app itself, not by this cask, when
  # live bandwidth is switched on: a ChmodBPF helper that grants the BPF
  # devices to the admin group. It is left behind otherwise, and removing it
  # asks for a privilege prompt.
  #
  # The two com.wails.* paths under Caches and WebKit are the embedded WebView's
  # own storage; `brew generate-zap` found them on the CI runners and the cask
  # has to name them or the check fails.
  zap trash: [
    "/Library/Application Support/DeviceShelf",
    "~/Library/Application Support/DeviceShelf",
    "~/Library/Caches/com.wails.DeviceShelf",
    "~/Library/Preferences/com.wails.DeviceShelf.plist",
    "~/Library/Saved Application State/com.wails.DeviceShelf.savedState",
    "~/Library/WebKit/com.wails.DeviceShelf",
  ]
end
