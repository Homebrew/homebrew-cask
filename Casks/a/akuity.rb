cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261109102054-804b200da0c8"
  sha256 arm:          "383d230fde2a640869f6aedb9e08f0660575778c3af4d0b14b9f9f2f571094ee",
         intel:        "53be0e94605eddca8996b74300849c9be27d3f3a9930300519fe393ff0b9d132",
         arm64_linux:  "b5f5a34302fcb89eac8d7efca038789f84fbccf0badcced947dfccc3124b490d",
         x86_64_linux: "06c87d426951782a0f6b312a075193f82c0c69d9ba1a38026b279d2d8e29dfaf"

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
