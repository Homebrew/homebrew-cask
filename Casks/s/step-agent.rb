cask "step-agent" do
  version "0.68.0"
  sha256 "e1f200513070880fd8072c2e8491c41552bf533290a69d1d0e7edf5628993fb2"

  url "https://packages.smallstep.com/stable/step-agent/darwin/#{version}/step-agent_#{version}.pkg"
  name "Smallstep Agent"
  desc "Device identity and certificate management daemon"
  homepage "https://smallstep.com/"

  livecheck do
    url "https://packages.smallstep.com/stable/step-agent/darwin/index.json"
    strategy :json do |json|
      json["versions"]&.map { |v| v["version"] }
    end
  end

  depends_on macos: :ventura

  pkg "step-agent_#{version}.pkg"

  uninstall launchctl: [
              "com.smallstep.Agent.UserAgent",
              "com.smallstep.launchd.Agent",
            ],
            pkgutil:   "com.smallstep.Agent"
end
