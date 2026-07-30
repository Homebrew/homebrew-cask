cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.38.1"
  sha256 arm:          "027996374724375f7aa199cfff0443c722e0b42d0787ba96714c6499462c70c8",
         x86_64:       "62d9c01c7a7f85f2aa614f0c5dfe42b4dc3254fe361425d4668f5dc12721f39c",
         x86_64_linux: "7a7b7168f521d31838f0cc59abf172527853308c9b9cceee34895121acb0be0f",
         arm64_linux:  "854f92932dcfebc26434e83e426729933a8d0aae447889e439cf01f1b213a7fd"

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
