cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.70"
  sha256 arm:          "c601b75939fe1fa7b417e712cd1c429e3ab9ccb6056bb38af4e61b3209345a09",
         intel:        "667a4b176b5f59c2b7bd84b64fe5e9991f01d5b9a5712fb08c291b1a3de9abb1",
         arm64_linux:  "e5fbe20caa8d72691cac8f09b8a9d979ebbeb5cadc23d9a704c8932158512fa4",
         x86_64_linux: "7eeeaadee46c0a22db4e4d48e33acb747e64d19612b6047c3eda54fbc1eb3490"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
