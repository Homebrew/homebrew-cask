cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.4"
  sha256 arm:          "fc69fa1c910245b27002b2391fc191c9277e2a749df282cf12bcc1a837d9a3d2",
         intel:        "06476bf62257165d08b27b319c7c9397c6e040996cc7c8df8be4bb5d2a881697",
         arm64_linux:  "298b7e10345216d163dd8fd1244150756ac51de0e44df7e0d78cea96cf455b52",
         x86_64_linux: "eb9cbf248a81f6d17f4825fe6ae6a03677a8bd32143b1436f38bfae828897029"

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
