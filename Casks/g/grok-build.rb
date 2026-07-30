cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.117"
  sha256 arm:          "03de738b8ccd40569a18905ddafe004226eff3343b8423a172477b2767e721d2",
         intel:        "b4f839dbe6a3ae80ab804f5f477f9d1b20da46cd2e61e884f0239baac1a38a88",
         arm64_linux:  "01ed7c8a4088617e1acacc49caa87f8c34daaf6bdbfb7f59e679fa261a8a8c84",
         x86_64_linux: "2f6fb370a798e7d6e04595e117a983969de333f65bfafbd812ee287c7fb2b83f"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/cli"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"
  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
