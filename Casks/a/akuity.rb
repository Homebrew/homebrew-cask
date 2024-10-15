cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.3"
  sha256 arm:   "25f8c4bbe08229a30cdd6133c15fe61e3b96951546eadaf6e816ed84fcdbcaae",
         intel: "c761ea95d2cc4eeaf9869d978f43bd2ee42876b2c32da979f476d3d8b8d376e0"

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
