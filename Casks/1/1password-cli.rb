cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.31.0"
  sha256 arm:          "5253da8dff5dd6225bf865be8e4cf7b7a35b98253896aad976b5d0a5b731b663",
         x86_64:       "2a3e9058b67521d664ab44ab189ed568206aca3ab59eed1b9eafb5f9ff077ae4",
         x86_64_linux: "796dbfc3c00f1312688fd4de2f4002ffd45fb2393d5723755bccb02c52242730",
         arm64_linux:  "869d2686a4d3ef3f87c97d0e324c1b80c39ca65879b89e201b97b4b6bf4a9c55"

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

  zap trash: "~/.op"
end
