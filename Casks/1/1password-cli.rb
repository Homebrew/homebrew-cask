cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.32.1"
  sha256 arm:          "fcf1038da5d1030c87e3382553a875638f17e19204874bed0034382ce2dfd4b8",
         x86_64:       "6469797129d9e70129aac1828893a53ef535be3c7d4bd1e235498b8d78d6a4eb",
         x86_64_linux: "64a49db2d1b0333f3bee88546e3e84995e530e25f2c783fb5d4081d01a05b2a1",
         arm64_linux:  "cf6d114b12079ba5ac4f3ea6c69d331c06565c361aeae77f8c20868bd94c9885"

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
