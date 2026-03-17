cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.33.0"
  sha256 arm:          "e7a4fdb33254b20f6721df46bf81f25ebf6e7f190183c6830619f90655eb35cb",
         x86_64:       "de0910cce4f646434ecd97c8d07e60a92b4e19f187b01698332461bdfae549b2",
         x86_64_linux: "299f113a8591dc088b659ff1bf47252d7261856518d37999ac2440724025dce8",
         arm64_linux:  "1d3862246186953b6d0585d17a9b5bbf5c89f2b000d21b32a4a9442ef1493c99"

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
