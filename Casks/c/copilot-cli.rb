cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.385"
  sha256 arm:          "c2f6e0bd63faddba45dfd111f3eb0210fb1320bfde3cad4c89bc6fcf364efefb",
         intel:        "33c95990d634b4e1de3abe7abb9249fa6a766660063de2166960ead091829a56",
         arm64_linux:  "817f12c91a8badad6ab6dd25d405158bad40118bb7c2d6deb40e4a9a66bed82b",
         x86_64_linux: "5c705d696cde4cf0e631395d6a7e2102c5d25b71cf6657739f248b9f5854a2bf"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
