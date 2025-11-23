cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.32.0"
  sha256 arm:          "11f92951d25cf77aa1e7e714f45b05b07d816227afb3f2116595b40e4ff1d8f0",
         x86_64:       "d65ab2430d95af45b735045cb797eb33274902b8e85f945cd420929fb9bec181",
         x86_64_linux: "68e3141b11ad38ba5004fb40d71371b710c0bbf94733f0df9180768336f90097",
         arm64_linux:  "6f3d571aabe7701e21ad4b0f9d30207c3dcabdb2f9c261e3651106dde0ee8946"

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
