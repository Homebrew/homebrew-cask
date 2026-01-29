cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.27.2-0.20260129074534-3938c01fcc92"
  sha256 arm:          "0d6907f028bc1cb73167587d907d64b5912eec918599d4cb7ee6b2c18686ca1b",
         intel:        "95b73afc547cd234714fd09a929e38c02d20458023912822534c034aefdced64",
         arm64_linux:  "5d9b212b82891fdbbc5c833b97ffcec90087044742b164f586e954c84a029088",
         x86_64_linux: "3edd1b3f6ce159cf537ba2cc5381c6e805a44d7108c6109d660ef3a39046a59a"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
