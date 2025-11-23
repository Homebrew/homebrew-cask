cask "agent-tars" do
  version "1.0.0-alpha.10"
  sha256 "4499bd0b523bb89f8adfcd3536b13ad95c03d4bf77c9ae0c3f321eeca5a0f869"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/Agent-TARS-v#{version}/Agent-TARS-#{version}-universal.dmg"
  name "Agent TARS"
  desc "Multimodal AI agent for GUI interaction"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  # The upstream repository creates releases for more than just Agent TARS, so
  # we have to check multiple releases because the "latest" release may be for
  # something different.
  livecheck do
    url :url
    regex(/^Agent[._-]TARS[._-]v?(\d+(?:\.\d+)+(?:[._-](?:alpha|beta)[._-]?\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        # TODO: Reinstate pre-release skipping when the cask is updated to a
        # stable release.
        next if release["draft"] # || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Agent TARS.app"

  uninstall quit: "com.bytedance.agenttars"

  zap trash: [
    "~/Library/Application Support/agent-tars",
    "~/Library/Logs/agent-tars",
  ]
end
