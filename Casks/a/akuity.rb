cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.3"
  sha256 arm:   "15df9129a40186dbeae4fa6dc2321bc1b9f00e27c5358a40fa63594efe43a769",
         intel: "cd19834744cec89f20e32455d18d1c81c75b2f45f394153fa4d1da3bf5cd2f6a"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: [
    "~/.config/akuity",
  ]
end
