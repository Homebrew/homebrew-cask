cask "craft-agents" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "95612023b9d032bf958dd29332d039243065364962f50d736ae1cae8cbdf8054",
         intel:        "9ac17ef80625df3957f5b0ecddee5a707038fad4a5c86f508f19dfe9c4405b00",
         x86_64_linux: "ee7d4a70f96a007721ed2cbcc7cd9487b99a3321f6c6073b78a59bd3fd42db58"

  on_macos do
    on_arm do
      version "0.14.1"
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
    version "0.14.1"

    depends_on arch: :x86_64

    app_image "Craft-Agents-#{version}-linux-x64.AppImage", target: "Craft Agents.AppImage"

    zap trash: "~/.config/@craft-agent/electron"
  end

  url "https://github.com/lukilabs/craft-agents-oss/releases/download/v#{version}/Craft-Agents-#{version}-#{os}-#{arch}.#{url_end}"
  name "Craft Agents"
  desc "AI assistant for connecting and working across data sources"
  homepage "https://agents.craft.do/"

  auto_updates true
end
