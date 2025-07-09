cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250708203931-73f2ca23504d"
  sha256 arm:          "6c9db617e862ab4588519d1504fad51d6354a585fa007f4af519b81152cf5a3b",
         intel:        "cdca9dc8e34bc0c1668bf53b1373df1f5ecf6050a37ae2bfe173c49e30541d99",
         arm64_linux:  "4cab433e48f76c3c9ccd642b6f74f05d867d9251066777d769823878f90ad453",
         x86_64_linux: "714e3f78b0e0e3ab9ae5f9e5501dfb5bc24df9100e008283383941c364bb5ec2"

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
