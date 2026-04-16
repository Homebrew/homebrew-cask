cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.35.0-beta.01"
  sha256 arm:          "0a07daa0bbb88c81ef0ab73e54a20eb7a9371374a58fb5ac6db56ef727d9b531",
         x86_64:       "967e9ab535877df57bb4bb74d487005c8a1823aae378d9158e4407833ec86560",
         x86_64_linux: "a0dce54733cf331737a00e1491257f56886ace82c0a3d481c5cc33a9d7305bce",
         arm64_linux:  "1e598d0271de16f5a995c2014961cfe9111b11f05358ab73314454aeabb736cd"

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
