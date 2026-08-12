cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.39.0-beta.02"
  sha256 arm:          "bd47ba04b88f9a7e48385b2a28397e328d8d4fc29d75c8928ea49d31ced5f863",
         x86_64:       "219e22f679966d35688364588f2f9db3b98dbd52faa338cf63590c24f1ba38ce",
         x86_64_linux: "7f7bda62050a00350c8ac0850e23fd5fe7679333861b4161b160e4ced39f5cc0",
         arm64_linux:  "15b7f408886ac7e35666e05d22cf3d4e8ff10bb7d2d0e0e2df92c3d4194dd7c5"

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
