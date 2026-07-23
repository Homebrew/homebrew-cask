cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.525.0"
  sha256 arm:          "1dddaa3f74bf9095151d6eb7a0270b5399368d50e25bcc7c0330e9bf0dc728f4",
         intel:        "40640840e2bee44b14e34cfc56bb99706705f03030a819333eb3565327ee6990",
         arm64_linux:  "8a5cc23df340d4be9c3e6b2a7b4f84a5fbb97fd442c7b91bde3b7e7df6d23251",
         x86_64_linux: "66e442f9362e9a82245f4c10e14bfc62c252da3122bddc649fac60490a015e3a"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
