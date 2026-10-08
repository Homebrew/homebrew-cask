cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261008065403-5e8ed23eb342"
  sha256 arm:          "ea59f793191d9d4cfcaca16fb95bcf87a068ac6f6378a92cfc575804e58b8d63",
         intel:        "959601054b8ccdd55466e579019eb4481d66e30c4830f3a0fd66acea573d8365",
         arm64_linux:  "2c551283f0a453ea6ac64589402bb3a41f58c98ce320d24d607ecc2e1e1c3991",
         x86_64_linux: "2408dde345879611460b7bd26e7c54e7c83dd30f3c06f27195e0f16a32977475"

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
