cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.7.0.20261002235844-8bf7d67ebc59"
  sha256 arm:          "5682ec03fe9c1c2f9d5e0650469b734008eed26947b5ea1e3b96dd558fb1b371",
         intel:        "81338a89a940557dc41b3f3a96dbded48b343bbd4678adc5c43b54d576c05247",
         arm64_linux:  "33314b54305994b764e0547451c57032f17fba6e9e7145659357ea621b82e763",
         x86_64_linux: "54c3f4b426c59f0ec578a57a61733acaba768cbfafeae8b4387804023e3b99e1"

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
