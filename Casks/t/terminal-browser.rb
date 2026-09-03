cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.7.6"
  sha256 arm:          "86758f7c37a00f30430b59479de0206bafc385d3196b40d7c7c65b540064d3c0",
         intel:        "df18716cb6ba8c7846e04d3ddbf6291a450d1529ad069de333ac17b24b1f01cb",
         arm64_linux:  "7150fa97460d9834bfd6bf1e4a71f6e538adbc7fd2ed6879d0457fccca323d46",
         x86_64_linux: "be367e7d942c5b6fe39a327105e8dc3e4412d92474ae2ba42ab056452ec4e2c4"

  url "https://terminal-browser.sh/install/dl/stable/v#{version}/terminal-browser-#{os}-#{arch}.tar.gz"
  name "terminal-browser"
  desc "Terminal-based web browser"
  homepage "https://terminal-browser.com/"

  livecheck do
    url "https://terminal-browser.sh/install/latest.json"
    strategy :json do |json|
      json["version"]&.delete_prefix("v")
    end
  end

  binary "terminal-browser/bin/terminal-browser"

  zap trash: [
    "~/.agents/skills/terminal-browser",
    "~/.cache/terminal-browser-*",
    "~/.claude/skills/terminal-browser",
    "~/.codex/skills/terminal-browser",
    "~/.cursor/skills/terminal-browser",
    "~/.gemini/skills/terminal-browser",
    "~/.local/share/terminal-browser-*",
    "~/.local/state/terminal-browser",
    "~/.local/state/terminal-browser-*",
  ]
end
