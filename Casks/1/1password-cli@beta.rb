cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.34.0-beta.03"
  sha256 arm:          "95c53050b18c2996a6ee4cd3b2e8731b133fbf75a706dd7f86fbfd8202721423",
         x86_64:       "486aae1562cb14e9b34f6cbe0d9c6a1c762b4b877b55a8468919301137675940",
         x86_64_linux: "813fc8bf3403f78bf49437313519aa6d6662dffc6296067bbd4b2edbcc85e188",
         arm64_linux:  "8785d30561510e9304fce37e3929c7857163238b413bfef646e66df4ff2cf0b2"

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
