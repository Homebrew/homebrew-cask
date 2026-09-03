cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260903090006-6c64d6ee5f6b"
  sha256 arm:          "b5fa3fcf6eb296fdbfda36e6bd67b5ab41db9f72379c86dc8ec04624ff2abbae",
         intel:        "5de82cffed5f8d3fb8bb3595be11027f4e8f140dd231302481aad486d0d8228d",
         arm64_linux:  "a261e064f79ca454c5335e5eb31dfb536ff17d7ce73dda39271c27f904bfa939",
         x86_64_linux: "ae018d70f16a451bd971bcc3034e53544ecb1b865914043885f41a3dec368505"

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
