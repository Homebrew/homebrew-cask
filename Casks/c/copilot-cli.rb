cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.401"
  sha256 arm:          "22080b78c03df6d236defb6b1cca3d8651e4e3d9e97b8e9b4f8dc7567bd6938a",
         intel:        "8342a5ed1e67fb7b6005bd94545b4fbad39b298b8d3d222f80d1334376187639",
         arm64_linux:  "fecc034218d54079245cbdb6c098ade691b668eb03e97c1f76a050fdb251ee9d",
         x86_64_linux: "060eabe41edcf400bb2ae622d9060266f565ea43840b6e779e7d072e5016a282"

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
