cask "remotix-agent" do
  version "1.5.19-23333"
  sha256 "87be3d61e5406cd55e3c8ff50567e255379b085d1eeca330899186f7ad96b117"

  url "https://downloads.remotix.com/agent-mac/RemotixAgent-#{version}.pkg",
      verified: "remotix.com/agent-mac/"
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
