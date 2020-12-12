cask "lektor" do
  version "3.0.1"
  sha256 "112e42681bb86840261ee456f632f5e2807b5d24e41a2e84046f1586379e3572"

  url "https://github.com/lektor/lektor/releases/download/#{version}/Lektor-#{version}.dmg",
      verified: "github.com/lektor/lektor/"
  appcast "https://github.com/lektor/lektor/releases.atom"
  name "Lektor"
  desc "Static file content management system"
  homepage "https://www.getlektor.com/"

  app "Lektor.app"
end
