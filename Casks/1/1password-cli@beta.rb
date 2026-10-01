cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.41.0-beta.01"
  sha256 arm:          "76546582ee23dc9d96553b72f05a275bc2661283c16a8dafa38b1cd6bff75aba",
         intel:        "5af8411ada0c8e261824eac1971b24ec45264280af3601b91df14708800cee07",
         arm64_linux:  "01748887883ad28e735b7e987c49f51f186bba8fa349f2b31e86a53b4012a68c",
         x86_64_linux: "5702890a2c5452c7ad301f2448e89801ad718a7148500a753b0ea4b0aa3a9473"

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
