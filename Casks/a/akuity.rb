cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20260114233947-f6f10a69cdd6"
  sha256 arm:          "8dbb6e9dd7d0eaaf8787ecf242169288679050eb10fce4178db1c4fcb7145450",
         intel:        "597fad63635fc54ade49e583b2777dda6c68b5098f0c85fc4b3f4dac48c9edfe",
         arm64_linux:  "0cb4f01c666157df22c01c16bf87a378e0f6c9130651b65abe05051f87fa8424",
         x86_64_linux: "d3c23f02ae89bd9343787f13c20bbfe87622647b7094090a8c28dbcfca89b69c"

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
