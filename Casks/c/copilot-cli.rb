cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.66"
  sha256 arm:          "60af73e16e1f2a745a35e9baa53798d115eb4f5d3360a15fae286bd0c01233d9",
         intel:        "99570289a40221c4f900c1c6199ab2988b2549c58a97e9ac97dd7346398b0343",
         arm64_linux:  "67e6e7b25f92ec2307fc9abb10f806585bd4b72cfb06c14b1bc1023a0b6c8f29",
         x86_64_linux: "89cf839ef8aed70ec2a3d39cc731f4ee613c377254032a2a206cf14b20bfbd06"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
