cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.33.0-beta.02"
  sha256 arm:          "9be947c59c8d2654f3fabfed2c64df25d491a1bb32c9be8c420a7600a79a9a2e",
         x86_64:       "57cf1a7e34a9a8112925a7b54c74d9c49db3efa81be6e60179364780cfe835e4",
         x86_64_linux: "344e882f7fab6dcac70dfcb41a82ba529d6c012b3a953cbecb1d1a916e2118ac",
         arm64_linux:  "b7a1d02b890e6088dd910ab8022b74393f9f18b59cf5eeef09bae35261f49472"

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
