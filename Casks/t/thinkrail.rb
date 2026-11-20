cask "thinkrail" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:          "f6b286fb21a703144307b1c096923509bfa4b7851e7483c17473d71a16470120",
         arm64_linux:  "effbddeb0ab3f9c9bb8e908f75ae73f3bbadbec4702a5678745f617ca5efe07c",
         x86_64_linux: "b8548fccc4b4b469c7a44fb2ca5053c598a74862aa6ea39820b16face00cdbeb"

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
