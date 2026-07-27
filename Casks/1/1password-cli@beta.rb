cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.38.1-beta.01"
  sha256 arm:          "ca6bb537833c57269a7f87426e350434c35f3f0f0d725c5bb21c895ce2f3b3d7",
         x86_64:       "3ebcb1d5d3d1ab17af42f8ebb97dd14cce4f593983f215f3e09cc9458ebf2eed",
         x86_64_linux: "27001cd897ead900396229e31dd7989678b8c2632c6421b531351d46e3f5d4f0",
         arm64_linux:  "31f92c5f4e8d098171782761736a8e1ed22dd970f375cb2e52bef67ed6024ecb"

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
