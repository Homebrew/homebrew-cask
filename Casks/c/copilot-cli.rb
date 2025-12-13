cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.369"
  sha256 arm:          "c504e68dc020e8afffd3b7f5f16656aec236f4d4dfc87c36f9de932dd1a8d431",
         intel:        "e511f3cafbb5cf9cca3a59ec4b4c808c95980e7147a3fdbf3fe41dca036346da",
         arm64_linux:  "f9c3a518936664421cfc2c242775844488d4a217b5d9cef34e21e285c936b688",
         x86_64_linux: "5032ea53e9e14c182f65b15d765fc6a772771299018106ebd6d324561e69a928"

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
