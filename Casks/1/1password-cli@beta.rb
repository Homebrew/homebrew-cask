cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.34.0-beta.04"
  sha256 arm:          "f38128bb2dcfe7bbc8b47432fd32af6f50ded428bea7330300d47fd9654146dc",
         x86_64:       "54c54019d6dbd0761a6254b4f22b018f49403cba985b1c5f43139e78764cae9c",
         x86_64_linux: "3b44700cd57c258067dc4dbbdd16e4614edee6899fe7508b7bf080b5ea384fc8",
         arm64_linux:  "2062dd6da3ddbd491c6e016c86efeeec34577b98e23673f07be48c2604a7d060"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/check/1/0/CLI2/en/0/Y"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: [
    "1password-cli",
    "1password-cli@1",
  ]

  binary "op"

  zap trash: "~/.config/op"
end
