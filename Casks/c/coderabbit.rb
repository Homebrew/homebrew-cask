cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.8.0"
  sha256 arm:          "748271195b85cc245613f2affabacd4189c721f3839fb14d3efceccffdb382f5",
         intel:        "ccebc6335fd7fe0bbe2ad595aa57f684890551ff03114c8cc2403952d9c7ac52",
         arm64_linux:  "570fd0569239371de6b7cb1004c760052c507d1fbb3189b692988d7f3804ee6d",
         x86_64_linux: "e60aa408266c3e2350aae890b239ab8d1c12b3f607f4475e1c2ddd4529af1d71"

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
