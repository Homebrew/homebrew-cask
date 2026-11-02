cask "thinkrail" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:          "dc23dad47bf3cf6b7ae73ffde5ee6af0d38f16a0c2810919c65f954c820f903d",
         arm64_linux:  "0060f5edabad65ccecc0fb6fec1df011977ef04080786403636e34011aa35e41",
         x86_64_linux: "8f8889e29e3cb0e8bb83a1fe8a42644d6f2b11f47e39109f238419851337b742"

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
