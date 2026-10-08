cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.0"
  sha256 arm:          "f5f20fb7318ac99b6ffdf306abe3c82b80ed2382116e50163605a569b59583df",
         intel:        "64fdc8466b2900f98fdf2df515a5f3bcbae0f44d430cfb6bec8176a2f07087bb",
         arm64_linux:  "ad8f700742981beb8759160dbbd786183af3d76c97d1595e3d64099e4f13c924",
         x86_64_linux: "56e4c99de9d11106c3e6bf31034864db8f746cb97c9eaf9470adcfa6461da66f"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-#{os}-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
