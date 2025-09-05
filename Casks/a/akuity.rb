cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250905103045-ffe101382f29"
  sha256 arm:          "6f8b446cfe04953cc929c35478661f7ee239e2e17e5d6751fd7f8d61be6ad04c",
         intel:        "c747e3f5cbc4ba387b5988ff9435c40206175f34587536560ae125eed01ba912",
         arm64_linux:  "03f2b086cf52f284b15cb4d2c0e4a726df2b2257e7a0913b554f87bd8cb8c878",
         x86_64_linux: "969a6ba0adda914a3b1d33407c13628108bd3fc451cd8c2010f2295ddc070f1c"

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
