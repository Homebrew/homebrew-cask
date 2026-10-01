cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.13.3"
  sha256 arm:          "92b12331dbb835e11947f785599f06fd3d6566d894e62c7a80221001898443a5",
         intel:        "01221727058ddbbcfcac3adb92acff1a2794649021845f84f0c524f9f6f90ebd",
         arm64_linux:  "dd9660b21c2ca7306e2460b53aab9ea987dc266ead59176ac74512d374c024c1",
         x86_64_linux: "696fa02d9764f50d595399f89f86d5c466121b1f3ea7dc3c140c89d7837f50ca"

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
