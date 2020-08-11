cask "pomotroid" do
  version "0.12.0"
  sha256 "cb82bae8ff7bfc578b01b9cc5521605f122b851e1cf1cfc53a3055cf664f7447"

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  appcast "https://github.com/Splode/pomotroid/releases.atom"
  name "Pomotroid"
  desc "Timer application"
  homepage "https://github.com/Splode/pomotroid"

  app "Pomotroid.app"
end
