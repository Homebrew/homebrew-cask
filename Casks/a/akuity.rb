cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260917091226-d2cdf4773fdb"
  sha256 arm:          "5ea61faf8b4b55358e969154cc0857fd3f4921460604c489772628495ec5cc5a",
         intel:        "581755e0204d75dd6659afe524290341dfb29e31e0d7a070bde396f346a284db",
         arm64_linux:  "215dcf5b5c6039cf8a245baaec2066425559982d13ac3a45d7d5517cb1ff585f",
         x86_64_linux: "0f9a1293930e5bacb390607e3c38af996bab9bb709c6916626cbc1e047ca8fc1"

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
