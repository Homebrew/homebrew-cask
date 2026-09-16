cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260916043637-5a69bea6044a"
  sha256 arm:          "dd436018c658fc5614ae82210bebb6ca963ef9fedb146052190c8f5d9dfcc5e5",
         intel:        "077a211c208589af37da131708c4fb532e3b1d185b204693af3605a04407b588",
         arm64_linux:  "d0897ce217a1fa772d3f1efcc18d10b781f5677aa8aa89d3c5695892b990741f",
         x86_64_linux: "86685c3da01f956127780362b524493c0e908d226edd4cfad7b5bffc2f2a7fc8"

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
