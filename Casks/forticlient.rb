cask "forticlient" do
  version "6.4.3.1325"
  sha256 "469baae00c624421492c2c0adc0715642bec0f9fcf6cadd18b1ddecdd6e724c9"

  url "https://fortinetweb.s3.amazonaws.com/forticlient/downloads/FortiClient_#{version}_macosx.dmg",
      verified: "https://fortinetweb.s3.amazonaws.com/forticlient/"
  name "FortiClient"
  desc "Fabric agent with endpoint protection and cloud sandbox"
  homepage "https://forticlient.com/"

  pkg "Install.mpkg"

  uninstall quit:      [
    "com.fortinet.FortiClientAgent",
    "com.fortinet.FortiClient.helper",
    "com.fortinet.FortiClient",
    "com.fortinet.FctMiscAgent",
  ],
            pkgutil:   [
              "com.fortinet.fctappfw2",
              "com.fortinet.forticlient.vpnservice",
              "com.fortinet.forticlient.pseudosra",
              "com.fortinet.forticlient.fctnewav",
              "com.fortinet.forticlient.wfservice",
              "com.fortinet.forticlient.fctappfw",
              "com.fortinet.forticlient.firefoxsupport",
              "com.fortinet.forticlient.preinstall",
              "com.fortinet.forticlient.pseudosbx",
              "com.fortinet.forticlient.pseudoaf",
              "com.fortinet.forticlient.fctav",
              "com.fortinet.forticlient.pseudoav",
              "com.fortinet.forticlient.fctvul",
              "com.fortinet.forticlient.certutil",
              "com.fortinet.forticlient.sandbox",
              "com.fortinet.forticlient.Uninstall",
              "com.fortinet.forticlient.pseudowf",
              "com.fortinet.forticlient.postinstall",
              "com.fortinet.forticlient.fssoagent",
              "com.fortinet.forticlient.pseudosso",
              "com.fortinet.forticlient.commservice",
              "com.fortinet.forticlient.FortiClient",
              "com.fortinet.forticlient.epctl",
            ],
            launchctl: [
              "com.fortinet.credential_store",
              "com.fortinet.fct_launcher",
              "com.fortinet.fssoagent_launchagent",
              "com.fortinet.forticlient.vpn.vpn_control",
              "com.fortinet.fctappfw",
              "com.fortinet.config",
              "com.fortinet.epctrl",
              "com.fortinet.fmon2",
              "com.fortinet.fssoagent_launchdaemon",
              "com.fortinet.sandbox",
              "com.fortinet.fctservctl",
              "com.fortinet.fctctl",
              "com.fortinet.fctwf",
            ],
            delete:    [
              "/Applications/FortiClient*",
              "/Applications/FortiClient.app",
              "/Applications/FortiClientUninstaller.app",
            ]

  zap trash: [
    "/Library/Application Support/Fortinet",
    "~/Library/Application Support/Fortinet",
    "~/Library/Application Support/FortiClient",
    "~/Library/Logs/Fortinet",
    "~/Library/Saved Application State/com.fortinet.FortiClient.savedState",
  ]
end
