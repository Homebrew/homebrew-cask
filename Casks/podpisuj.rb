cask "podpisuj" do
  version "5.5.36"
  sha256 "a0d595774fa64097c1a47a509b76020b549e8a4231fbc3ddc93a1ab3186cd14e"

  url "https://www.podpisuj.sk/staticweb/install/podpisuj-#{version}.dmg"
  name "Podpisuj"
  desc "Application for electronic signing and validation of signatures"
  homepage "https://www.podpisuj.sk/"

  livecheck do
    url "https://www.podpisuj.sk/o/portal-services3/client/appVersion?ext=dmg&version=0"
    strategy :page_match
    regex(%r{.+,([\d\.]+),\d+}i)
  end

  app "Podpisuj.app"

end
