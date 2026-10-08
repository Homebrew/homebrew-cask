cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.42.0-beta.01"
  sha256 arm:          "d54250864d99bce5ebf9386df1ffe07ca614b4c73d81a42ad9cc9464dee6ea56",
         intel:        "29678b150b8da1290bcf400493e6f24ab32762c007c7b79628522c189385da49",
         arm64_linux:  "ae1b76aec0934217321c2aa55758161335371f3955ee7534f465d7540729ff95",
         x86_64_linux: "7ffccf20cb626478ee3cbf4480000c13069742a462eeb931baf94b3bd018e85e"

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
