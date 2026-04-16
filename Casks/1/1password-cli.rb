cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.34.0"
  sha256 arm:          "a9c93d45ad62665c6350ed8958f281a94034a79c94e88077e530f6d129699a5d",
         x86_64:       "d2e4cbdf8b5d2d421a411e5251c6956f3ffce90adde82b2a429435645c9bc91d",
         x86_64_linux: "198b05dcf9a0972778ce5a4e262c459979b0c837257b5da65e2fba6187734226",
         arm64_linux:  "7b5c361a23e738a3969cf676960f4843af4aa9aa68dbec23d18a9134da428ba3"

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
