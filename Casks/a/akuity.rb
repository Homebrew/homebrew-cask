cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.17.2"
  sha256 arm:   "ba5da16634682f6c687bcb32c6d3f81be4ccf7ff868aec925d3b8173eff2c7af",
         intel: "6592c4641ccd883ae8c45320bfc639279f8ba3d98123fd619f910a1f7932e086"

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
