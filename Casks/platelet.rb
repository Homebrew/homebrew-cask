cask "platelet" do
  version "0.0.20"
  sha256 "f203da6348a22f7d19a497bcd068f87530502bcb70ba174d7306179ae01ef7b0"

  url "https://github.com/amorist/platelet/releases/download/v#{version}/platelet-#{version}.dmg"
  appcast "https://github.com/amorist/platelet/releases.atom"
  name "Platelet"
  name "けっしょうばん"
  homepage "https://github.com/amorist/platelet"

  app "platelet.app"
end
