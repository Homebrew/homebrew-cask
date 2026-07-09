cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.37.0-beta.01"
  sha256 arm:          "b03cdb1d15903ec92523e53abcecc6130533140a420ca37e5194b0fea311d56e",
         x86_64:       "97627144ed48e97bc93428c43faf0c05497e678f6f61e5010d62682ecb07db51",
         x86_64_linux: "4a9868fe53d1f4d498d1e962a10b70d88d3a93788a439d3dc40f9007408f6f0f",
         arm64_linux:  "03f351c337b0e0b8cc18cf15632689e414f6111e07763ca514ba988edfe9f6fb"

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
