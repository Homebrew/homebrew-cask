cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261012065528-54824f561a47"
  sha256 arm:          "8ebfb7b633ee9dabd20eace45bf6e0f6bd37e73de987f33078f53c35413b606b",
         intel:        "74746d8fee3fabf771e293d2052939094643138748d4c5305f93e8da4f0c2a52",
         arm64_linux:  "02ffbcc818f27bc4b68e60fdb2a3fdf1814ff6b556d54cfd00f03b25b68b1a70",
         x86_64_linux: "738184afe9f0a9cf7dff41fad8fc28e7274de42e39f60bc26798ae2dee3004e4"

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
