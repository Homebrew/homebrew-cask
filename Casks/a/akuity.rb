cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260414181642-3e2bedcbfa35"
  sha256 arm:          "a42db5d82c4ed7e190f8980681bd6425e4184dfc0a7821010e913ed4c42eac10",
         intel:        "d588ca92bd28a062666bb715ebcade8c689130a43b8d25028d82cf8a1d7d3ac8",
         arm64_linux:  "74f59d74860573997a0e8658ca9f1031f971996188da70edb164b30472798a2f",
         x86_64_linux: "1107e6c8eab8d84f47050d711e19989f50b2f4dc9639d2833030dba9039657e7"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+(?:-rc(?:\.\d+)*)?(?:[._-]\d+(?:\.\d+)*)?(?:[_-]?\h+)?)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
