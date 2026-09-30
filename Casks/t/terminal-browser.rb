cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.13.0"
  sha256 arm:          "7ab56ed8a8198286590b3bf9c9a519fe0a762beca4b59fa0f0cc07759f7dabfb",
         intel:        "35cf2ca283dac44577d350cc977a6b7459a6a57c5b0bcf508c68ab3c164a7d65",
         arm64_linux:  "e6d77e79d6daf5b7041392031875700cc3b2736ef806b618690e948068aa7814",
         x86_64_linux: "1314a2079e94e0a239a293b3be81d153a0e0715e4a2ca09d60377dc72bac242e"

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
