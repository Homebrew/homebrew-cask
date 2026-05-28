cask "longbridge-terminal" do
  version "0.22.1"

  on_arm do
    sha256 "5f8a2b74bc55e2624183c61bdf18c635f8f8991c262f92f7be33907eb7ef12c4"
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v#{version}/longbridge-terminal-darwin-arm64.tar.gz",
        verified: "github.com/longbridge/longbridge-terminal/"
  end

  on_intel do
    sha256 "4b4445c088e7a40517bbbb1a609426351c77c6ed23ab42d792b4c236005b390d"
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v#{version}/longbridge-terminal-darwin-amd64.tar.gz",
        verified: "github.com/longbridge/longbridge-terminal/"
  end

  name "Longbridge Terminal"
  desc "AI-native CLI for Longbridge Securities — market data, portfolio, trading"
  homepage "https://open.longbridge.com/docs/cli"

  livecheck do
    url "https://github.com/longbridge/longbridge-terminal/releases/latest"
    strategy :github_latest
  end

  binary "longbridge"

  on_macos do
    postflight do
      system_command "/usr/bin/xattr",
                     args: ["-dr", "com.apple.quarantine", staged_path]
    end
  end

  zap trash: "~/.config/longbridge"
end
