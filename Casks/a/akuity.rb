cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.18.0"
  sha256 arm:   "5c8b9b2f8b017e3ffe54a46b8e8d8b36479722bc5772d7c1b187c4a8c8538e01",
         intel: "24abe73c929de5376a59cd15332216d45c8cb719df5c975abdaf27eaf05055f7"

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
