cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.48"
  sha256 arm:          "93d8da1fd54b5df7b61557564b4c07eb777325d78fa3b235d0589531463f6504",
         intel:        "645eede8a4f3424835141dcc86819cf528a223197f82728d771239a8f1f466fb",
         arm64_linux:  "7380d40f27487fd8315a4ff8935509543d0c2f77cdce133aad397d2ea498fb00",
         x86_64_linux: "88e7456610d96e65c12c1a1fd67b9e93c09b5a775fdc73cd32afeb84e6663029"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
