cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.36.0-beta.02"
  sha256 arm:          "8c9db997bc79a10c40b903d0355cb15d8b36c7c01f1cdd7a4186aee9cd60a3f0",
         x86_64:       "a399b2ecc150bd4a4e04351a1d1f7899b62cb5f0494343d089f74b6b76649c63",
         x86_64_linux: "b740d47f7ac03bbdce31244633307bfd64ed72a36dd68d159385e43d7a0964d9",
         arm64_linux:  "9299e672f26941c7b1865ab9e05112024fd43bc1420698f66d5b38150571ad9a"

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
