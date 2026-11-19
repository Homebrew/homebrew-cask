cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.6"
  sha256 arm:          "5e646093b8968532341be4918e344675b4fa75e01ba2302cc7dad2252eed18e0",
         intel:        "dd4b82320145bed3a1ba5f84ff32767cad33c56522b1ec7b6238c57e400606cd",
         arm64_linux:  "39e7a52a7b88798051c0833019c9cfe48e037a65cdbbe99c5b7a5aaa912a144e",
         x86_64_linux: "ec154f575f57cd6dd3009938077226f3b832a0606ad4e74e24a8152762d6424a"

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
