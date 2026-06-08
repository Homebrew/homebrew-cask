cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.36.0-beta.01"
  sha256 arm:          "f27813a0b4e1f3c98488adb9a26b6581ce88024d2b5401ce42faae777f638a03",
         x86_64:       "bb34cda2ba3a38aeeda63eadae37ead1ec088dacbe4f30e8fca578ae357af304",
         x86_64_linux: "f6edb885a02e52e8f0f4e91edf7053eceff8111c868b78ccbb9a0a8d9ca5e6a7",
         arm64_linux:  "50ea654c5000c831185775e81128edeb14aac7d92e0d9d86aaa5784ed3589c41"

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
