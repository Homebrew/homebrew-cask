cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.38.2-beta.01"
  sha256 arm:          "5126035379fc2d36ef7b6e508b8775d60923fce38ab664f9071e6158ea54f3ab",
         x86_64:       "a3c9c889249457aecc283b1d42978e77d84136c2b64f71a08ea222a361b25090",
         x86_64_linux: "75a63f92fe14deca1b38bb39642beb365f026be72effb3e3dfd0fecc82254459",
         arm64_linux:  "9c967065b222f4678a537d42795343f449cff4d74229df7657b33eb102c62bde"

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
