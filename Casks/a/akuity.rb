cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251214125647-6bc89c8b36d2"
  sha256 arm:          "1d3188e69d74e26da1b527c27a07f60c8045515cdbc8153161c26c685664f63b",
         intel:        "76bf09d15a8eb7012cbc8758deffe2cf5e9b6e207226de425e2c8dd20d491c5a",
         arm64_linux:  "9e5e34645b4218a0a66f512bbeac07eb05c0b696b6d424b713d45e7d324b9f9d",
         x86_64_linux: "acfd57605e30116c689632bf13bc1bc91a09fb3e1899d217dc39a0f2c36df289"

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
