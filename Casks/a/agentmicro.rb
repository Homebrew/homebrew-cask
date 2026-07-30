cask "agentmicro" do
  version "0.1.2"
  sha256 "f9fbf1e480b07165821b6d707f421b5d80a097a1ba9d2478de0179a271d3820f"

  url "https://github.com/fizzy718/AgentMicro/releases/download/v#{version}/AgentMicro-macos-universal-#{version}.dmg",
      verified: "github.com/fizzy718/AgentMicro/"
  name "AgentMicro"
  desc "Menu bar companion for Codex task status"
  homepage "https://github.com/fizzy718/AgentMicro"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AgentMicro.app"

  uninstall quit: "com.agentmicro.macos"

  zap trash: "~/Library/Preferences/com.agentmicro.macos.plist"
end
