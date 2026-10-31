cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.2"
  sha256 arm:          "bf3ca96c08e5a5786e83703e285e30db43dd26e0e6dc59b82d9074ddcaa5b854",
         intel:        "e2f25d839d4abd04d07cdbd1b171d8648dd085d529f7cb373308a2753a7b6399",
         arm64_linux:  "4567ea42d0c52a6f5134180d22e5f0de4e75732b3e25fb1a5c5a433ccaa10d9c",
         x86_64_linux: "b29bef55fd5a41a2872938516acde46f4c0ccf8fd81c0d86829c435a75a5fd9a"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-#{os}-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
