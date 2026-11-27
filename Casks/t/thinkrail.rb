cask "thinkrail" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:          "ab15830207795cf6f6c87cf790c397c739448f4fe95aee655d27d666ce1db380",
         arm64_linux:  "706d0ba77f630106b32f4b24378562d54ffd102d78650ed1fcc2b3501792cc15",
         x86_64_linux: "49289235c3e02d589acf72ff04cc8ae3925ea8f0f8616555496b95c49088fc9b"

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
