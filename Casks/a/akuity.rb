cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260914081952-5deca364d2c0"
  sha256 arm:          "6f0f25c470b171eb2cef26e46649cf64373ce21e9896a29040b7847d82948e9d",
         intel:        "6cc4a09011bc13072042e9428679e5925e460aeced099577c999b4775e6babff",
         arm64_linux:  "ed4231316c586763a4910cbbdefa988183f13f140c9fe079385ea2c36afda4fa",
         x86_64_linux: "9ab6d9288b35d96e6424a6f9f521e3649c5dc44d8b4e6b7ecb878d01d52b7e54"

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
