cask "remotix-agent" do
  version "1.4.11-21038"
  sha256 "ae8b3a4593ea3f95ba7d18176d84df32860f4868a71c4f5eed026995cb9166a1"

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
