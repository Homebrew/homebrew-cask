cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.13.0"
  sha256 arm:   "b1ccb6e51589783925407fe734406069979d0acb1d63f64dac89cfd92f1ee451",
         intel: "b80fb572afdce750a0a273ca07024a41b5aa4f2e29e8c2fd65e721054c90d212"

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
