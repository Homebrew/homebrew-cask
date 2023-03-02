cask "mezmo-agent" do
    arch arm: "arm64", intel: "x86"
    version "3.9.0"
    sha256  arm: "8abcd3f4942fe9ca6ec8c1f5eb6d5cd12c927f1735aa90450d46894f73626318",
            intel: "31f1f3fc276946b15cbdd487a9c0a974bb78336b534b2314cc5f60e5b661b741"

    url "https://logdna-agent-build-bin.s3.amazonaws.com/logdna-agent-#{version}-#{arch}.pkg"
    name "Mezmo Agent"
    desc "Agent streams from log files to your Mezmo account"
    homepage "https://mezmo.com/"

    pkg "logdna-agent-#{version}-#{arch}.pkg"

    uninstall pkgutil:   "com.logdna.logdna-agent",
              launchctl: "com.logdna.logdna-agentd"

    caveats <<~EOS
        To always run logdna-agent in the background, use the command:
        sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
    EOS
  end
