cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261119121144-22cbe7e671ce"
  sha256 arm:          "45234a8c8b9ff8781c0fcac5e1a8970a4b2db406d7cd7043322a23e14da53ae2",
         intel:        "bc8216eabaf6f6c92082911f049ec2ce6bc1c9bb7fba4fbc8770a4da4e4e3dd5",
         arm64_linux:  "b9c2ef9a17f2334309d52484074b14049ccb3ae9790e8e9de3ae1eb71434236f",
         x86_64_linux: "43667e46cdd92c23d9dcf3b3e318d18d778fbcb9ffcbb0876557510ef8670444"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
