cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.112"
  sha256 arm:          "4a4a6aa624dceb76a23e1a53fb5f64e87a0bb5a2161a5017e0edf78d7082ce68",
         intel:        "fda4b6661269589b15447c9c6ebde96939a4cd32d08d6595a9dad6e92d1e83f5",
         arm64_linux:  "491d18303505935675dc20987ef0c5f3ae899f81e66c53d567ad97a8b03e504e",
         x86_64_linux: "dfe7e59acf04f0b7f59b024ea9db101a9246503e9bf7152eb668fbb2a469b151"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
