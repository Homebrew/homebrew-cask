cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260723171328-f0bc24accee8"
  sha256 arm:          "8d5e3cc0e6c6eedead97e7e9514949561969550f9d7e6180697fd16651c02787",
         intel:        "dbe0e5fd07a8e15c980476961782a13d2954c859faaba03265dca1da431eef18",
         arm64_linux:  "c2c901ec9e0fb69555f84ea4c1879869e6226afd95511f9ce3bb2107ebf9cd56",
         x86_64_linux: "6948cd5e894819c898849f1866c6739655fdac9f219eefef53a68ce3ec66bd60"

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
