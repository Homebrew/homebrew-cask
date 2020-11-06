cask "keycastr" do
  version "0.9.8"
  sha256 "7d864bf9b9d9be36d6dd5e26ecbefdeafa7e5dbfead4e923535dc3212f5bca0e"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast "https://github.com/keycastr/keycastr/releases.atom"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"
end
