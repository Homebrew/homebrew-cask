cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.22.1-0.20250510072018-fe7fed998215"
  sha256 arm:          "b29a1501c41ee47617c7bfda43d9d4a7edf31d1560490b3b421defa74bc552c6",
         intel:        "4a3cb2818e497d5a61ae26163ff81f6aa84d09a5cd42a2b1a53ccf6240b671f9",
         arm64_linux:  "2bb08c85eba9bd7b18988da947347589a368d2b15ab83a78f73c1ba2897d4c07",
         x86_64_linux: "9ebdb6e8be4ccdcf285346159875c89f5c63be1b0060afdb548da1f6b8c48268"

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
