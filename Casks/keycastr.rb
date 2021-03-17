cask "keycastr" do
  version "0.9.10"
  sha256 "02f5b18b6911a74a82d2b95339d71e3941deed98c8051cc929d9af49c05dcdf3"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast "https://github.com/keycastr/keycastr/releases.atom"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"
end
