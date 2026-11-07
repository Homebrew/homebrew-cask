cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.3"
  sha256 arm:          "9836ce4b03eafcd072e94ee53d08fc3b6c0719cdeade545718424d62be20c158",
         intel:        "8c9ea5c30e0f8dcfe405ed550f1e6f2970f95e6e1a1374ad093d01792f71090f",
         arm64_linux:  "4313b39253efc3b5bd0728192d80c815251f9e6f9f157bcb6bf701cf25d2e8ab",
         x86_64_linux: "d886901a5bffd9d7359bcd10e92e27fa1e55e8a7f8da2b1dfcd425a7f89edc4b"

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
