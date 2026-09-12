cask "smallstepagent" do
  version "0.69.3"
  sha256 "1c84e66b90f778b67803e42f3d413335ba26c100f4793201ef8bfd839d49a6d9"

  url "https://packages.smallstep.com/stable/step-agent/darwin/#{version}/step-agent_#{version}.pkg"
  name "Smallstep Agent"
  desc "Device identity and certificate management daemon"
  homepage "https://smallstep.com/"

  livecheck do
    url "https://packages.smallstep.com/stable/step-agent/darwin/index.json"
    strategy :json do |json|
      json["latest_version"]
    end
  end

  depends_on macos: :ventura

  pkg "step-agent_#{version}.pkg"

  uninstall launchctl: [
              "com.smallstep.Agent.UserAgent",
              "com.smallstep.launchd.Agent",
            ],
            pkgutil:   "com.smallstep.Agent"

  zap delete: "/Library/LaunchAgents/com.smallstep.Agent.UserAgent.plist",
      trash:  [
        "~/Library/Application Scripts/com.smallstep.Agent.Token",
        "~/Library/Containers/com.smallstep.Agent.Token",
      ]
end
