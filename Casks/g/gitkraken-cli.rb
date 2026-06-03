cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.67"
  sha256 arm:          "6e4cf6d4cbee6d2838768ab5ef57d0a3427bfeea050304ea2188a405516a59fa",
         intel:        "4c6755fcd0dbc6e214c9b3dee0efbc64dfe49b76e95783ac1e17102d81f19de2",
         arm64_linux:  "63b0545a48da647414c8fb9538edc064c042ec94023973de043ac4e8bb7bccaf",
         x86_64_linux: "8f8495b74f406a78cb1b6b230cc7d7ce17921ce39bb541858ad4be5ad21630bc"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
