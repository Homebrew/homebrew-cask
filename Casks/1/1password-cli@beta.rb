cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.43.0-beta.02"
  sha256 arm:          "d1ddc52f3ad76cfc88b7ac921294639e2fc42cdda4d5b8155f4f4ea9df2e3e91",
         intel:        "e7b148cccb45d996a45f6deeb830a68759f3031bac4c2c4a4cf3c9315f91f685",
         arm64_linux:  "c082e09fcef4e45a70015886c58544e0d1f1317bbff0108980674d85e31205ab",
         x86_64_linux: "831beb2374e08993c5362c179ad4166b7e2ff4d0a8f21c7da6964d6bffdea0ad"

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
