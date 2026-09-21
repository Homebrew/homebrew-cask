cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.5.0.20260918024347-917694a8053d"
  sha256 arm:          "d09c8b41255d8de53df58c7be0494adc518048868c066dbfd8bdce6882475a33",
         intel:        "297eed1a9444115b74ae4410c7bf8d20a691d4303c2036d3a9c9e032c122acec",
         arm64_linux:  "8ee3c19087d892ce923cfd9bb72206e49ef97d56206f2b8afe2ea7a82991053c",
         x86_64_linux: "8b2d51ca11e12ad63c7dcb7f531e3fbdbead2872c28a04331cc654e754a35d7a"

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
