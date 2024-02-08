cask "keycastr" do
  version "0.9.16"
  sha256 "7ca2e35e29e79ae62d348fc4b3c758dab77f65d933b8ed77881fb252d6a61845"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"

  zap trash: "~/Library/Preferences/io.github.keycastr.plist"
end
