cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.566.0"
  sha256 arm:          "bee57e3e046e072e0bf227229294e88b940c093b5fc12309b4b7986d4d9f259a",
         intel:        "cc8f4a54f21ae3fa813d531563e6036a957d64ea8d596d8d53aff25c7978773b",
         arm64_linux:  "0e6db1f76ec1afc5019b612f2eedab394b0df7b2ce22637547212eec16c25cb6",
         x86_64_linux: "ffdaffed4d8bc05b31042b2d991bdeca5d262c33ba9761df6fc0b9c184c051f8"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
