cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.39.1-beta.01"
  sha256 arm:          "5a10849ea208649f1c98913d13fa13c6ca9981f21dae3b8daee874701f15d8ff",
         intel:        "f450729141cb49477bc168fa98c68db96e8eabed8cea865d8b79d615a007ec72",
         arm64_linux:  "e4cc960792a98dec659d87d571c6c1e82d6f2e4b872686409c9dd31e2ea095bd",
         x86_64_linux: "57a5d7637e1f508194b48732136de57e53efcc447877a5dbcaed7801abeb7f49"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip"
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
