cask "plasticscm-cloud-edition" do
  version "11.0.16.7419"
  sha256 "cc638e83033ea7af2b1f5f8c0bac21a7c3aa59ea937a9deb802bd244bf26df98"

  url "https://s3.eu-west-2.amazonaws.com/plastic-releases/releases/#{version}/plasticscm/osx/plasticscm-cloud-#{version}.pkg.zip",
      verified: "s3.eu-west-2.amazonaws.com/plastic-releases/"
  name "PlasicSCM - a Cloud Edition"
  desc "Install PlasticSCM locally and join a Cloud Edition subscription"
  homepage "https://www.plasticscm.com/"

  livecheck do
    url "https://www.plasticscm.com/download/releasenotes/"
    regex(/plastic\sscm\s-\srelease\snotes\s-\s(\d+(?:\.\d+)+)/i)
  end

  pkg "plasticscm-cloud-#{version}.pkg"

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
end
