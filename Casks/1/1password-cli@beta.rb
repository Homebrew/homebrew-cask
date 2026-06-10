cask "1password-cli@beta" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.36.0-beta.03"
  sha256 arm:          "14ba25b5eec4f2a54694ca0dca33e8c5c0ff1933dd308dd5c97bd78bf7de2194",
         x86_64:       "c97c88deadeea7f5581b498f57270f7e6e0613cbefa76c18e7eb21d7b941a1c3",
         x86_64_linux: "ed9ebf2bbc16ff624da1da9c3a4786f5e75fa9861e996d0c22eec650ec617ea9",
         arm64_linux:  "cde7831ba16ccdbf67f1a34fb6b232f8b0d77e422a0b78535229951df740dca6"

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
