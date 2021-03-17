cask "evolve-ip-uc-one" do
  version "22.2.0.1359"
  sha256 :no_check

  url "https://www.voip.evolveip.net/dms/bc/pc/uc-one-mac.dmg"
  name "Evolve IP UC-One"
  homepage "https://support.evolveip.net/display/EIQ/Downloads"

  app "UC-One.app"

  zap trash: "~/Library/Application Support/Evolve IP"

  caveats "This edition is only for Evolve's A VoIP platform. Visit the homepage for B, C, and D platform downloads."
end
