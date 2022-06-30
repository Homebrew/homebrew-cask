cask "forticlient" do
  version "7.0.0.22"
  sha256 "2beaff9671d9367985cfe9548a225af798a7df25fd83a18d07c1148952fa43c9"

  url "https://filestore.fortinet.com/forticlient/downloads/FortiClient_#{version}_macosx.dmg",
      verified: "filestore.fortinet.com/forticlient/downloads/"
  name "FortiClient"
  desc "Fabric agent with endpoint protection and cloud sandbox"
  homepage "https://forticlient.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "Install.mpkg"

  uninstall_preflight do
    system_command "/usr/bin/chflags",
                   args: ["-R", "nouchg,noschg", "/Applications/FortiClient.app"],
                   sudo: true
    system_command "/usr/bin/chflags",
                   args: ["-R", "nouchg,noschg", "/Applications/FortiClientUninstaller.app"],
                   sudo: true
  end

  uninstall quit:      [
              "com.fortinet.FctMiscAgent",
              "com.fortinet.FortiClient",
              "com.fortinet.FortiClient.helper",
              "com.fortinet.FortiClientAgent",
            ],
            pkgutil:   [
              "com.fortinet.forticlient.FortiClient",
              "com.fortinet.forticlient.FortiClientx86",
              "com.fortinet.forticlient.Uninstall",
              "com.fortinet.forticlient.certutil",
              "com.fortinet.forticlient.commservice",
              "com.fortinet.forticlient.epctl",
              "com.fortinet.forticlient.fctappfw",
              "com.fortinet.forticlient.fctav",
              "com.fortinet.forticlient.fctnewav",
              "com.fortinet.forticlient.fctvul",
              "com.fortinet.forticlient.firefoxsupport",
              "com.fortinet.forticlient.fssoagent",
              "com.fortinet.forticlient.postinstall",
              "com.fortinet.forticlient.preinstall",
              "com.fortinet.forticlient.pseudoaf",
              "com.fortinet.forticlient.pseudoav",
              "com.fortinet.forticlient.pseudosbx",
              "com.fortinet.forticlient.pseudosra",
              "com.fortinet.forticlient.pseudosso",
              "com.fortinet.forticlient.pseudowf",
              "com.fortinet.forticlient.sandbox",
              "com.fortinet.forticlient.vpnservice",
              "com.fortinet.forticlient.wfservice",
            ],
            launchctl: [
              "com.fortinet.config",
              "com.fortinet.credential_store",
              "com.fortinet.epctrl",
              "com.fortinet.fct_launcher",
              "com.fortinet.fctappfw2",
              "com.fortinet.fctctl",
              "com.fortinet.fctservctl",
              "com.fortinet.fctwf",
              "com.fortinet.fmon2",
              "com.fortinet.forticlient.vpn.vpn_control",
              "com.fortinet.fssoagent_launchagent",
              "com.fortinet.fssoagent_launchdaemon",
              "com.fortinet.sandbox",
            ],
            delete:    [
              "/Applications/FortiClient.app",
              "/Applications/FortiClientUninstaller.app",
              "/Library/Application Support/Fortinet",
            ]

  zap trash: [
    "~/Library/Application Support/FortiClient",
    "~/Library/Application Support/Fortinet",
    "~/Library/Logs/Fortinet",
    "~/Library/Saved Application State/com.fortinet.FortiClient.savedState",
  ]
end
