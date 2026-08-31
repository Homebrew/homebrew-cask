cask "drata-agent" do
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.9.0"

  on_macos do
    sha256 "1a312c713b2b6bdd94638121345db14c339089a686b208e684b2f5a3d3d2edf8"

    depends_on macos: :monterey

    app "Drata Agent.app"

    zap trash: [
      "~/Library/Application Support/drata-agent",
      "~/Library/Logs/drata-agent",
      "~/Library/Preferences/com.drata.agent.plist",
    ]
  end
  on_linux do
    sha256 "4988d5bfd96bdd43da8b471b196cc4cd45b49185fa52b2ce26a410147dcee484"

    depends_on arch: :x86_64

    app_image "Drata-Agent-linux.AppImage", target: "DrataAgent.AppImage"
  end

  url "https://github.com/drata/agent-releases/releases/download/#{version}/Drata-Agent-#{os}.#{url_end}"
  name "Drata Agent"
  desc "Security audit software"
  homepage "https://drata.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
