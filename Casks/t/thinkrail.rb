cask "thinkrail" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:          "235dbae9504ee9ebd6188fbe1cda5bca8a76685b7280ee3243bbde868204b37d",
         arm64_linux:  "fb2aaba1673290540d4d8520d15771cf35d1867b1af9f12cf1768b01963b0dc5",
         x86_64_linux: "ad08a93adde49a0d2788ea21ea2687860d5713f5f8d8705b05ad6b79829e2aba"

  on_macos do
    url "https://github.com/JetBrains/thinkrail/releases/download/v#{version}/thinkrail-desktop-darwin-arm64.dmg"

    auto_updates true
    depends_on arch: :arm64
    depends_on macos: :sonoma

    app "ThinkRail.app"

    zap trash: [
          "~/Library/Application Support/ai.thinkrail.app",
          "~/Library/Preferences/ai.thinkrail.app.plist",
          "~/Library/WebKit/ai.thinkrail.app",
        ],
        rmdir: "~/.thinkrail"
  end
  on_linux do
    url "https://github.com/JetBrains/thinkrail/releases/download/v#{version}/stable-linux-#{arch}-ThinkRail-#{version}.tar.zst"

    command_wrapper "thinkrail-desktop", executable: "#{staged_path}/ThinkRail/bin/launcher"

    zap trash: "#{ENV.fetch("HOMEBREW_XDG_DATA_HOME", "~/.local/share")}/ai.thinkrail.app/stable",
        rmdir: "~/.thinkrail"
  end

  name "ThinkRail"
  desc "Agentic development environment"
  homepage "https://thinkrail.ai/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
