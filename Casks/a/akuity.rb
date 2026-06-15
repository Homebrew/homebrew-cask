cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.1.0.20260615180644-6a6d9753788b"
  sha256 arm:          "ce457b0d2da4391b70497ddd3bf29e1efd8319b9f615bb9b283dd7b464de52a6",
         intel:        "4be1cd8d2591a11111d876e2fd7712a68d0060742029dc096c4c0dc8f4044ce7",
         arm64_linux:  "f751c5045d720d629b362ff677b471d72bcf8c8a606ecb188bb69a274d2b9d52",
         x86_64_linux: "52cd7c6ba1de8fa2615951c0ca91f5dea0026d296e28924cd962f511af31e37f"

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
