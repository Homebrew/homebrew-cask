cask "keycastr" do
  version "0.9.14"
  sha256 "e66cec6bd6209fec563384952c767b2d10ce60e0d0887b4d26ebf0db575541e0"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"

  zap trash: "~/Library/Preferences/io.github.keycastr.plist"
end
