cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261117044128-70cb7eb64a3a"
  sha256 arm:          "4e99cd42cdd6cf7b8433c5a70f33e5f47602a5771c2519cff4a2f9b7bd0eb517",
         intel:        "cdb1ef914301d40fc739d7a858326ab815006204259439527cd8e36b01b1ac07",
         arm64_linux:  "d1989304d3cc2a8946e02626fce40ae62a926ec06d3456d82c548f4e81277133",
         x86_64_linux: "dd262665dee4e4f992e0d43cf918642b9c2c6e44c042efa208045a579896099b"

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
