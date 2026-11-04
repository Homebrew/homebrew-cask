cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.44.0-beta.01"
  sha256 arm:          "e18dfe67ad539cc6f4be8ca98000251831fbd9c721d59f4e0eea8550827c7c6e",
         intel:        "0f34ae754eff3e148f3365504ba04b40097940d308c76004585fb4f0d1625a71",
         arm64_linux:  "392ee92bc9e373090db4cee6c1230b6e916e732fd6e7a07a2aba580727a8b5d2",
         x86_64_linux: "04149edc674f4fd5741a57e0044fbcb1abe90877da105a7ea534fc0af2dd2da4"

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
