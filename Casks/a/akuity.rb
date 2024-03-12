cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.2"
  sha256 arm:   "68578e07cb28edb4cb5cfec2e0f4be4a986418792ffe65d8a480264b955c96c4",
         intel: "a0c1c1316f2cb9ac7f1c3ae27cd4e05e20ea1668004c52aa98979fef3a4ef6a6"

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
