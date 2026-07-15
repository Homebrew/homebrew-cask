cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.38.0-beta.01"
  sha256 arm:          "65f7208f0bc1ca59d7b8d7076815b40b3196dcf5d762fe47a80f43cb6f8ac506",
         x86_64:       "ae490443f2fc7b1df97bc906702aaa44aa68a5f0635133f2476919043347b1a5",
         x86_64_linux: "ab5617d23cf99f5df5fef983c0d1c1f9b3421c28d0c5764863350365d4315857",
         arm64_linux:  "6a6a603b307468fabb557017de078840fbaafcb731376e5a655b35132c003cf7"

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
