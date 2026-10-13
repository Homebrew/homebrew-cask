cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.41.0"
  sha256 arm:          "83da93b6d90726ac5111ce4f6993a9504ee420b7a299b9d145041886cd13c6ca",
         intel:        "cf5f3a78e2d3a09e9a003e0cd855e8fff0a4b38ceda6f9921cd0b29005d3e6f1",
         arm64_linux:  "bc4ac99201909f96f67e7a89601dbf5388f991aca53120db6fc3f1666dff706b",
         x86_64_linux: "498bbaa154f0d90749325a14e04488fcd84930a426ae92ebf421d2a7d793a80a"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip"
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
  generate_completions_from_executable "op", "completion"

  zap trash: "~/.config/op"
end
