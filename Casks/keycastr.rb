cask "keycastr" do
  version "0.9.12"
  sha256 "ca2cf1ac7fdca30e979a024e404722bddde0b7aadce5fb4d00f533eafcf7bf17"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"

  zap trash: "~/Library/Preferences/io.github.keycastr.plist"
end
