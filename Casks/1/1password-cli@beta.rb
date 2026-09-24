cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.40.0-beta.02"
  sha256 arm:          "bbcc2038da64ad656824f6b3a3655fa2ddb171333b5c63bc003bf2056a082c28",
         intel:        "1d752b8ad89327f13b6b951cef17a348a2b1d94f6992908d2ec68ee0f61f2bda",
         arm64_linux:  "cd4ba525e00d847f748d9733c646eab5258e87649f6927a0aa1546305f4032dc",
         x86_64_linux: "e62d3006372c7ab878baa9c982415c4b5f7aa2f31af88135a49ae06839321199"

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
