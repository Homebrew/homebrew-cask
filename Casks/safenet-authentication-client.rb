cask "safenet-authentication-client" do
  version "10.2.109.0"
  sha256 "d0c316379c03e17a35a53e81df641b85b38b5cf7b7a8f6b5f11789a0819f943a"

  url "https://www.globalsign.com/en/safenet-drivers/USB/#{version.major_minor}/Safenet_#{version.major_minor}_Post_GA_R3.zip",
      verified: "www.globalsign.com/en/safenet-drivers/"
  name "SafeNet Authentication Client"
  desc "Client for smart card readers and security tokens"
  homepage "https://support.globalsign.com/ssl/ssl-certificates-installation/safenet-drivers"

  depends_on macos: ">= :catalina"
  container nested: "Safenet #{version.major_minor} Post GA R3/Safenet #{version.major_minor} Post GA R3/SafeNetAuthenticationClient.#{version}.dmg"

  pkg "SafeNet Authentication Client #{version.major_minor}.pkg"

  uninstall	launchctl: [
    "com.SafeNet.SACMonitor",
    "com.SafeNet.SACSrv",
  ],
            quit:	     [
              "com.gemalto.Gemalto-Smart-Card-Token.PKCS11-Token",
              "SACMonitor",
            ],
            pkgutil:   [
              "com.safenet.safenetAuthenticationClient.eTokenConf.pkg",
              "com.safenet.safenetAuthenticationClient.eTokenFramework.pkg",
              "com.safenet.safenetAuthenticationClient.scripts.pkg",
            ],
            delete:	   "/Applications/SafeNet"

  zap trash: "~/Library/Application Scripts/com.gemalto.Gemalto-Smart-Card-Token.PKCS11-Token"
end
