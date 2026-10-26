cask "thinkrail" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:          "29e1a7d51166a0f3a8b684b9c7ea8e49fd3f7527bd353b8a64354d5141b457c0",
         arm64_linux:  "e4f4535cf9e8a0230048a85c5d54510d6403f4671b73e797b2b998a8a97de302",
         x86_64_linux: "409b8dfda23c0abe527131beff747232f5b7a91dc5df8b45ad31d2843ff28e0d"

  on_macos do
    url "https://github.com/JetBrains/thinkrail/releases/download/v#{version}/thinkrail-desktop-darwin-arm64.dmg"

    auto_updates true
    depends_on arch: :arm64
    depends_on macos: :sonoma

    app "ThinkRail.app"

    zap trash: "~/Library/Application Support/ai.thinkrail.app/stable"
  end
  on_linux do
    url "https://github.com/JetBrains/thinkrail/releases/download/v#{version}/stable-linux-#{arch}-ThinkRail-#{version}.tar.zst"

    command_wrapper "thinkrail-desktop", executable: "#{staged_path}/ThinkRail/bin/launcher"

    zap trash: "#{ENV.fetch("HOMEBREW_XDG_DATA_HOME", "~/.local/share")}/ai.thinkrail.app/stable"
  end

  name "ThinkRail"
  desc "Agentic development environment"
  homepage "https://thinkrail.ai/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
