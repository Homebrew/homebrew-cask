cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.28.1-0.20260304203106-72dab8e58ba5"
  sha256 arm:          "9fe742f4bee4514fb848015f1f1e3c7eb9285b09c1bae4dfa812c862a53554ee",
         intel:        "25d52d6a0e3c302bcd34b31d9b6f2a7d4a924d314c770682b5ae4367d0a24928",
         arm64_linux:  "6bb3a94f02d87eadfefa11e8636404702dccfc8444cc016da3a34b0dc8888ecd",
         x86_64_linux: "34bf0d0c97ff0a29974ccae9adc9b88412e1d6ae92265d040552a21b54f0abeb"

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
