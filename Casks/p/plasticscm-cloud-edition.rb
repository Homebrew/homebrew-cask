cask "plasticscm-cloud-edition" do
  version "11.0.16.9656"
  sha256 "be88c3a13a473180fc16067afc2702a9c4d0fcb90052fbac0af72697da9741ce"

  url "https://d26z97tczqnlef.cloudfront.net/releases/#{version}/plasticscm/osx/unity-vcs-#{version}-mac.pkg.zip",
      verified: "d26z97tczqnlef.cloudfront.net/"
  name "PlasicSCM - a Cloud Edition"
  desc "Install PlasticSCM locally and join a Cloud Edition subscription"
  homepage "https://www.plasticscm.com/"

  livecheck do
    url "https://www.plasticscm.com/download"
    regex(%r{href=.*?/download/v?(\d+(?:\.\d+)+)/plasticscm/[^/]+/cloudedition}i)
  end

  pkg "unity-vcs-osx-x64-#{version}.pkg"

  uninstall launchctl: [
              "com.codicesoftware.plasticscm.macplastic",
              "com.codicesoftware.plasticscm.server",
            ],
            quit:      "com.codicesoftware.plasticscm",
            pkgutil:   [
              "com.codicesoftware.plasticscm.macplastic",
              "com.codicesoftware.plasticscm.server",
            ],
            delete:    [
              "/Applications/Gluon.app",
              "/Applications/PlasticSCM.app",
              "/Applications/PlasticSCMServer.app",
            ]

  zap trash: "~/Library/Saved Application State/com.codicesoftware.plasticscm.savedState"

  caveats do
    requires_rosetta
  end
end
