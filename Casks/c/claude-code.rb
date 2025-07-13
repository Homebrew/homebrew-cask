cask "claude-code" do
  version :latest
  sha256 :no_check

  url "https://claude.ai/install.sh"
  name "Claude Code"
  desc "AI-powered coding assistant from Anthropic"
  homepage "https://claude.ai/"

  depends_on macos: ">= :big_sur"

  installer script: {
    executable: "bash",
    args:       ["-c", "cd #{staged_path} && bash bootstrap.sh stable"],
  }

  uninstall delete: "~/.local/bin/claude"

  zap trash: [
    "~/.claude",
    "~/.config/claude",
    "~/.cache/claude",
  ]

  caveats <<~EOS
    Claude Code has been installed to ~/.local/bin/claude

    Make sure ~/.local/bin is in your PATH by adding this to your shell profile:
      export PATH="$HOME/.local/bin:$PATH"

    Then reload your shell configuration or open a new terminal.

    You can run Claude Code using the 'claude' command.
  EOS
end
