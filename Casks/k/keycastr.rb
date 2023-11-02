cask "keycastr" do
  version "0.9.15"
  sha256 "e4af1142d9b782ceaf08adf66ec3b2a541cea341a6228a2402ebaaa3dc2acae8"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"

  zap trash: "~/Library/Preferences/io.github.keycastr.plist"
end
