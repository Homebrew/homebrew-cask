cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.33.0-beta.01"
  sha256 arm:          "a7157d0cfe32ad6c4ef48ee761f075840e32106ead115d9a851409759896792e",
         x86_64:       "513246334cde0073bd40baf8de3d7b9b0c69b45c0e762831cd42b89b2dec8246",
         x86_64_linux: "b8d824b2480aff31a4df03c42f1a9f510cdb3915824fd341dc8a04ffec606c8f",
         arm64_linux:  "bfbc3f2561d4320effb1ee4edecb9975599b7b6fda8db917e737bfcf114397d7"

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
