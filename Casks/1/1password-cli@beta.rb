cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.34.0-beta.02"
  sha256 arm:          "dfe745d3f5328c1bf78df88bf55fd0e783c83dedb407619fd2160cec6c1bace9",
         x86_64:       "401cb6840c2242f6767841428aef97f881f05ff52c3192a7d8a8965fde4fb023",
         x86_64_linux: "79dd937856e80c860909b757ae6608d93e8f8eb90a00f60eb66c0d445956d589",
         arm64_linux:  "f17b0922fc8e5dbf5df15bc6c09c6f40b441486df3aad14b106e969b1da148f4"

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
