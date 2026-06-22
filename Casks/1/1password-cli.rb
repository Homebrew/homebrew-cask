cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.34.1"
  sha256 arm:          "101b54dd194fbb6c63276b84f5eee1968be3558e2212519d9f5e26ab24a4ad05",
         x86_64:       "ca4e6b00eedc80a9a134297eb2390ca6039d2c9040ac57a80dbb8a1127823a27",
         x86_64_linux: "b13ed106335419ea0fb0ebd7ebbb3b48cf26a2f214eb4b2fd8d950548e7980ed",
         arm64_linux:  "fd730a28ffa68376ac62b563d30e20e30ef59d3e2f142d9c6a959cfac5b50f60"

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

  generate_completions_from_executable "op", "completion"

  zap trash: "~/.config/op"
end
