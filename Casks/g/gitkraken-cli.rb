cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.64"
  sha256 arm:          "97685c0c4e460e64ba830f7927877eb0c1cb9b662de8370fdbd9ee8eed2c74ed",
         intel:        "dee165530cad8d99bf21f51ccd7964201841dda5f1297fc377ef5b669b9fb411",
         arm64_linux:  "4135e31732920ac7b09ec0c139042515ff8389c3b6ee7a8b423d0e803436665c",
         x86_64_linux: "acb41257e445a29e45e2027a80799b2d8000807dc36c9a0f5aa53725f43f0810"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
