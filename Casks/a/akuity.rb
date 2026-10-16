cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261016080414-7a9450ef21b5"
  sha256 arm:          "d92cca9fea8207bab3e5b690f580b99f916d1cf2e1e4a49853fdecc3671b4960",
         intel:        "20e02f3d70730918c142b18cbde03d6b769cffd7f10fc1079693295225b17650",
         arm64_linux:  "a46537fc4f7a53604802dfdaa2a2bd805ec89b138308f221c715e2aae221dd0a",
         x86_64_linux: "5a199bf5b899ee51f6035f1783c35be60878a4090fb57091969c53ac558019ed"

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
