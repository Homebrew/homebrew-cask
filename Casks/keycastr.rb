cask "keycastr" do
  version "0.9.9"
  sha256 "976e4a2dc1a364bfbf5164ab1e5a37bae7d7e4e8fb41f0c0a524e2802b79c0eb"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast "https://github.com/keycastr/keycastr/releases.atom"
  name "KeyCastr"
  desc "Open-source keystroke visualizer"
  homepage "https://github.com/keycastr/keycastr"

  app "KeyCastr.app"
end
