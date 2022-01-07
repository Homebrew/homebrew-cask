cask "plasticscm-cloud-edition" do
  version "10.0.16.6375"
  sha256 "6921855233cb19866c58fd5e8fdd0c93c03d07624122d0016bb57b151ddae26b"

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
