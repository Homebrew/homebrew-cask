cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.5"
  sha256 arm:   "0cb17d5023df61a073bd274dda4ffc044aa9c1d855d39750415a69c7db4b5006",
         intel: "7802705b9b615aee4373429632cb87d5e3138c7a795c926ab49aca5d94f4a4eb"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
