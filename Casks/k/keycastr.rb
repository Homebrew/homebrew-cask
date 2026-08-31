cask "keycastr" do
  version "0.11.0"
  sha256 "00cc656a786012bcbdb5b203b1a56604727ad2ced5e4f5c1d189296f62881033"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualiser"
  homepage "https://github.com/keycastr/keycastr"

  livecheck do
    url "https://keycastr.github.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "KeyCastr.app"

  zap trash: [
    "~/Library/HTTPStorages/io.github.keycastr",
    "~/Library/Preferences/io.github.keycastr.plist",
  ]
end
