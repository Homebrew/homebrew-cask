cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.31.1"
  sha256 arm:          "4e9538ee3aeae9a04db7fc59082dff0acc9a10292b68c9515436c15a87c4a7f9",
         x86_64:       "a708a8592051a4b28a0f1039e4c2cf9268412f00cfe05d71d3f23948a9a4bed5",
         x86_64_linux: "2e98f0df5977f57bcb2f3e8835e2837660ee4915456ee8ed124e0588a429a5c9",
         arm64_linux:  "87292a7c0546e181526b4f362720a76f9e46bbb6cc24addd44b7573541dd9ab8"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/check/1/0/CLI2/en/0/N"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: [
    "1password-cli@1",
    "1password-cli@beta",
  ]

  binary "op"

  zap trash: "~/.op"
end
