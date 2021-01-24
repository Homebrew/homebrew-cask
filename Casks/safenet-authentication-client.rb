# typed: false
cask "safenet-authentication-client" do
  version "10.2.109.0"
  sha256 "d0c316379c03e17a35a53e81df641b85b38b5cf7b7a8f6b5f11789a0819f943a"

  url "https://www.globalsign.com/en/safenet-drivers/USB/10.2/Safenet_10.2_Post_GA_R3.zip",
      verified: "www.globalsign.com/en/safenet-drivers/"
  name "SafeNet Authentication Client"
  desc "Client for smart card readers and security tokens"
  homepage "https://support.globalsign.com/ssl/ssl-certificates-installation/safenet-drivers"

  depends_on macos: ">= :catalina"
  container nested: "Safenet 10.2 Post GA R3/Safenet 10.2 Post GA R3/SafeNetAuthenticationClient.10.2.109.0.dmg"

  pkg "SafeNet Authentication Client 10.2.pkg"

  uninstall	launchctl:	[
    "com.SafeNet.SACSrv",
    "com.SafeNet.SACMonitor",
  ],
            quit:	     [
              "SACMonitor",
              "com.gemalto.Gemalto-Smart-Card-Token.PKCS11-Token",
            ],
            pkgutil:   [
              "com.safenet.safenetAuthenticationClient.scripts.pkg",
              "com.safenet.safenetAuthenticationClient.eTokenFramework.pkg",
              "com.safenet.safenetAuthenticationClient.eTokenConf.pkg",
            ],
            delete:	   [
              "~/Library/Application Scripts/com.gemalto.Gemalto-Smart-Card-Token.PKCS11-Token",
              "/Applications/SafeNet",
            ]
end
