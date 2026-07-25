cask "plasticscm-cloud-edition" do
  version "11.0.16.10303"
  sha256 "75da6a9095c159f1c04e57e56ce7fd7ff8cbd4f5e6e4f4be9156b05884317c82"

  url "https://d26z97tczqnlef.cloudfront.net/releases/#{version}/plasticscm/osx/unity-vcs-#{version}-mac.pkg.zip",
      verified: "d26z97tczqnlef.cloudfront.net/"
  name "PlasicSCM - a Cloud Edition"
  desc "Install PlasticSCM locally and join a Cloud Edition subscription"
  homepage "https://www.plasticscm.com/"

  livecheck do
    url "https://www.plasticscm.com/download"
    regex(%r{href=.*?/download/v?(\d+(?:\.\d+)+)/plasticscm/[^/]+/cloudedition}i)
  end

  depends_on :macos

  pkg "unity-vcs-osx-x64-#{version}.pkg"

  uninstall launchctl: [
              "com.codicesoftware.plasticscm.macplastic",
              "com.codicesoftware.plasticscm.server",
              "com.codicesoftware.unityvcstray",
            ],
            quit:      ["com.codicesoftware.plasticscm", "com.codicesoftware.unityvcstray"],
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
