cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.3"
  sha256 arm:   "ed961644c7e854c0cec3a794320753f11ff066339e3636ffb641a44bba1384ef",
         intel: "94a9ee7d72619177961259da1dde259c1dc9a5ff51aaa1fffd4a6c0488f8dd1c"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
