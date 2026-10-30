cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261029155352-f3875d3566da"
  sha256 arm:          "98963d43386abdd64f1222cdc8abc3080861917f8e9fce44c0aef5d26b580207",
         intel:        "52cc82ead9cc899b98514675565209ca7f3887a63554cb87237aaf978270f177",
         arm64_linux:  "5aa31b1829663aa0cac799e0372580998b773062eb88819aef2557b871469b5f",
         x86_64_linux: "f682d82aa202817d6848e892969ad6c76b7b65a331e9eb08734f4da21a67e76a"

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
