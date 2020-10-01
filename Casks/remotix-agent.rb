cask "remotix-agent" do
  version "1.4.8-20888"
  sha256 "37e8316eef5c0a1b4e8c5e6e9c361de7d32a01929addd51910ed85b21006eda9"

  # remotix.com/agent-mac was verified as official when first introduced to the cask
  url "https://downloads.remotix.com/agent-mac/RemotixAgent-#{version}.pkg"
  appcast "https://remotix.com/downloads-mac/"
  name "Remotix Agent"
  homepage "https://remotixcloud.com/"

  auto_updates true

  pkg "RemotixAgent-#{version}.pkg"

  uninstall pkgutil:    [
    "com.nulana.rxagentmac.daemon",
    "com.nulana.rxagentmac",
  ],
            signal:     [
              ["KILL", "com.nulana.rxagentmac.user"],
              ["KILL", "com.nulana.rxagentmac"],
            ],
            launchctl:  [
              "com.nulana.rxagentmac.user",
              "com.nulana.rxagentmac.daemon",
              "com.nulana.rxagentmac.gui",
              "com.nulana.rxagentmac.rc",
            ],
            login_item: "Remotix Agent",
            quit:       "com.nulana.rxagentmac",
            delete:     [
              "/Library/LaunchAgents/com.nulana.rxagentmac.user.plist",
              "/Library/LaunchDaemons/com.nulana.rxagentmac.daemon.plist",
            ]
end
