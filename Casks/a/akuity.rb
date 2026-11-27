cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261127024056-6e258526c77c"
  sha256 arm:          "c6beba4a55002eae3da19f1b3536be3fdf38c94b41397d971854d962766aec79",
         intel:        "59698bc7219bf96345e1571b301e8330ebdff233eef3d5917d0a521543940130",
         arm64_linux:  "2451828dd98a43200da5adef0346b66f6082255cf471d2608e87e685061b9102",
         x86_64_linux: "9ceaad8ae267445214cfc1808248f337ea68eb7b028e056d5c84d4f8639a5bca"

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
