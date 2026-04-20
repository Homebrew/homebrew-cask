cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.34"
  sha256 arm:          "0d196dc67dc40300fa1046bf884e01a78b9fa4b51f98ce957450fe5d56547267",
         intel:        "16d387f6b007f38ca7990595a11d91d58cca81d8fd836952ed91d718890092f1",
         arm64_linux:  "399cf7740dd084789c31066e1ac8729e3531206bae7abbe009bf634bf8d0dc97",
         x86_64_linux: "2670c0aa92b29e3aa4046b41417b074b9888fbeca9065901a435d374dacc7084"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
