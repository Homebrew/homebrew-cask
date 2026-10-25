cask "craft-agents" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "032caa8f155bba5b56c0f1501d9b83a819703a8871002b8fb02bf053220a6528",
         intel:        "9ac17ef80625df3957f5b0ecddee5a707038fad4a5c86f508f19dfe9c4405b00",
         x86_64_linux: "b2d50ea510b0e2d6506eb71a494de43643ca843a4d1d37a178e9dd4970498fe8"

  on_macos do
    on_arm do
      version "0.15.6"
    end
    on_intel do
      version "0.10.1"

      livecheck do
        skip "Legacy version"
      end

      deprecate! date: "2026-06-12", because: :discontinued
    end

    depends_on macos: :monterey

    app "Craft Agents.app"

    zap trash: [
      "~/Library/Application Support/Craft Agents",
      "~/Library/Caches/com.lukilabs.craft-agent",
      "~/Library/HTTPStorages/com.lukilabs.craft-agent",
      "~/Library/Preferences/com.lukilabs.craft-agent.plist",
      "~/Library/Saved Application State/com.lukilabs.craft-agent.savedState",
    ]
  end
  on_linux do
    version "0.15.6"

    depends_on arch: :x86_64

    app_image "Craft-Agents-#{version}-linux-x64.AppImage", target: "Craft Agents.AppImage"

    zap trash: "~/.config/@craft-agent/electron"
  end

  url "https://github.com/craft-ai-agents/craft-agents-oss/releases/download/v#{version}/Craft-Agents-#{version}-#{os}-#{arch}.#{url_end}"
  name "Craft Agents"
  desc "AI assistant for connecting and working across data sources"
  homepage "https://agents.craft.do/"

  auto_updates true
end
