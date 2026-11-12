cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.44.0-beta.02"
  sha256 arm:          "050f3ae96b5da8610d4e8232bc1bd79c96d2357eedf029e86437fb6b511a8ad6",
         intel:        "d503b48945c6d12fe4232ad2adb912ff317678c0b51a1ae6cbac172c39986b0f",
         arm64_linux:  "cd50fe69002d587a8a2e5a119ec670a6d69ec27dd5d8d3f514a07d1c187a8412",
         x86_64_linux: "bbaab1b71650d336f7a2e7b35c0f91240955ca3008209f99ee997f08164f15f6"

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
