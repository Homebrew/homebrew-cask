cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.39.0"
  sha256 arm:          "05391d3388a0c0b4f602691bedc1ab368541c487b6f14d2e3399743b4682af67",
         intel:        "753fbf56b00996426edbb8439d2f3c0be9227b9557cdff468fb144cd3621aa6e",
         arm64_linux:  "829baeff1c07e055cfa132031b1d9f2282ccdf5076258e482caf2fda70aea5d0",
         x86_64_linux: "6fba7f376b6c6dec49f41b06408930a43ad064cce103c6a2ce5b3d0413a86434"

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
