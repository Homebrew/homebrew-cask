cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260904030936-08f2308bcda3"
  sha256 arm:          "efe3321058fc1327e8894c01805dd5544831024f84659f1cf6c375c7d5a02284",
         intel:        "c26aa06540a355d6348c7b5eb093a6396ebe019650ad34201218ec0c4f9b7148",
         arm64_linux:  "015b56944946956b53d2c141d79d354746d54b9aee9e5212c676c037c15e503a",
         x86_64_linux: "987032d5495faa4eb3bf1042e24c698580fcba0c7e70abd31862968117fb594e"

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
