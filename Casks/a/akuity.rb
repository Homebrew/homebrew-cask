cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.22.1-0.20250510072018-fe7fed998215"
  sha256 arm:   "b29a1501c41ee47617c7bfda43d9d4a7edf31d1560490b3b421defa74bc552c6",
         intel: "4a3cb2818e497d5a61ae26163ff81f6aa84d09a5cd42a2b1a53ccf6240b671f9"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
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
