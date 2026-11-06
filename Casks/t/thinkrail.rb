cask "thinkrail" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:          "c96e0d3a92719da9f8f6e7eedc6e7f819e7ada0782037a16e8b71f1ce1a82307",
         arm64_linux:  "31dad54916106a2cdd35899794e1c9ecfe731cee793b85691474e49d1a33c9f7",
         x86_64_linux: "85a3129cc005eac34192b41b6c6e32e6f2e08b11d2915403be6d6e117d155afa"

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
