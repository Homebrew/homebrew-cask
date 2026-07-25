cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.35.0"
  sha256 arm:          "6dcb9528c1ace2f18f7808418afe5dd58ed1376038aa4f907af7e0462582712b",
         x86_64:       "174ed82e76002a0589aed0996fe068d8cdee9997e6b9b3acee409cdc4862cd3e",
         x86_64_linux: "4457ade59850b852c64c77164235b34dd0b984ef7826eb0ccd32f1fd78a2ceb7",
         arm64_linux:  "28153b3e1b379cc117a2b8478fc29c73e4a391d0a9b7876c360d305e98390a78"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/check/1/0/CLI2/en/0/N"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: [
    "1password-cli@1",
    "1password-cli@beta",
  ]

  binary "op"

  generate_completions_from_executable "op", "completion"

  zap trash: "~/.config/op"
end
