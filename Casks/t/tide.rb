cask "tide" do
  version "0.1.2-beta"

  on_arm do
    sha256 "c1f2e6b37eed337b450652edb5240a3814df3cdcb8c19d482451e28a233f38b6"
    url "https://github.com/code-with-current/tide/releases/download/v#{version}/Tide-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "089f907cf9adaa358bb9fe6ca1d62585d6556d17fb05e9f88052b6baf41230f7"
    url "https://github.com/code-with-current/tide/releases/download/v#{version}/Tide-#{version}-x64.dmg"
  end

  name "Tide"
  desc "Local-first agentic coding companion"
  homepage "https://tide.codes"

  # The .app is ad-hoc signed (no Apple Developer ID), so users see an
  # "unidentified developer" prompt on first launch. homebrew passes
  # --no-quarantine by default for casks, which suppresses Gatekeeper.
  app "Tide.app"

  zap trash: [
    "~/Library/Application Support/Tide",
    "~/Library/Application Support/com.tide.code",
    "~/Library/Preferences/com.tide.code.plist",
    "~/Library/Caches/com.tide.code",
    "~/Library/Caches/Tide",
    "~/Library/Logs/Tide",
    "~/Library/Saved Application State/com.tide.code.savedState",
    "~/Library/WebKit/com.tide.code",
  ]
end
