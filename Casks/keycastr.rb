cask "keycastr" do
  version "0.9.11"
  sha256 "69b6a95483d05b11420ac4361dbf493478208980920912c987e6b582405f05b9"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"

  zap trash: "~/Library/Preferences/io.github.keycastr.plist"
end
