cask "smallstepagent" do
  version "0.69.2"
  sha256 "1f5c0a5b7d9abd3b4ec754af7fca244f562a2ed1d2a8d1a9fcf94a4a55ccad49"

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
