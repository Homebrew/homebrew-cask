cask "gopass-ui" do
  version "0.7.0"
  sha256 "43f14b79004b32eb081d39752f34b09639993a039cff4691ad69eb82b562b6b0"

  url "https://github.com/codecentric/gopass-ui/releases/download/v#{version}/Gopass.UI-#{version}.dmg"
  appcast "https://github.com/codecentric/gopass-ui/releases.atom"
  name "Gopass UI"
  desc "Cross-platform password manager for teams"
  homepage "https://github.com/codecentric/gopass-ui"

  app "Gopass UI.app"

  zap trash: "~/.config/gopass"
end
