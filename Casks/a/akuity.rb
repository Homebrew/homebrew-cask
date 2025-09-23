cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250923170226-ba8100c6c747"
  sha256 arm:          "0a3408553bb70b625866fdc433e46dfbb665adc47d23820bbe8f914a007ba512",
         intel:        "a9cd43a9f265fda5ab5673c0fd0244aaba3223705237c8d03ba074dae74d428a",
         arm64_linux:  "f9c2542c0b250a7545f05f58ee4d90b800db6708e88cf90da5b4ad482bb79323",
         x86_64_linux: "f0d2d8189e84f6ceaaf4433c2300632df54e89bc58863f49402a04769fbfbfc5"

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
