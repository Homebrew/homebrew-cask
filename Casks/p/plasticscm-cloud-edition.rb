cask "plasticscm-cloud-edition" do
  version "11.0.16.8223"
  sha256 "fe791eef737715bafd9caa1d67e293269e3d503f1bb2222192fe3ad1d37cae13"

  url "https://d26z97tczqnlef.cloudfront.net/releases/#{version}/plasticscm/osx/unity-vcs-#{version}-mac.pkg.zip",
      verified: "d26z97tczqnlef.cloudfront.net/"
  name "PlasicSCM - a Cloud Edition"
  desc "Install PlasticSCM locally and join a Cloud Edition subscription"
  homepage "https://www.plasticscm.com/"

  livecheck do
    url "https://www.plasticscm.com/download/releasenotes/"
    regex(/plastic\sscm\s-\srelease\snotes\s-\s(\d+(?:\.\d+)+)/i)
  end

  pkg "unity-vcs-#{version}.pkg"

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
end
