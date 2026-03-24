cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.33.1"
  sha256 arm:          "8106127624bf55f0bf5ae6f8e2c56398e01db75d64c3088eface33885c854351",
         x86_64:       "4ac94e529b93525d85c58d5a608a514444036897338e65208df9c84113140f94",
         x86_64_linux: "0fc50cb22d791b5ee5e1421d97e96595fd61ca56ae92271bd1b28bb884971726",
         arm64_linux:  "b4b32cf5860d8353b99429c1fc65d11f2b04a9a2a9f4d06b747b8c07929216f0"

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
