cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250908211825-c9c94d4df65e"
  sha256 arm:          "dc7f016d41251c7b7879ac9098f30cc95228a2db242b098b6db1aa3deeea9ca6",
         intel:        "8e465f62785a3123f1ea697a6360aaf1fe406e3d2dfbc7ef7a2e86c275966077",
         arm64_linux:  "7f8149f19e047dcdbe2fe3c0beeb158b70478f21c64d818a4f764a5623b930a6",
         x86_64_linux: "9b70d38df27b33d96ee8f0e78f7ab20005fc535f46d7f2711890de41cdeb4bc3"

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
