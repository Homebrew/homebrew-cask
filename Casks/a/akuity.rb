cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.27.1-0.20260127015931-8300387cd8f6"
  sha256 arm:          "2fe6dc729ffa73f1ffe59165943dc393f692fc93a63cdb74d05bb2197b853ec0",
         intel:        "217ed04f7ce830f54bc1df80f9b2852f69242380f55c6a3294e59669ec9b54da",
         arm64_linux:  "0d4924efbb5bb5a2dbf59d814309573212a9fb220abfcc40392521ee32d9d846",
         x86_64_linux: "9c0cc97ad00c1b59098f9042c03640f2e692629038a7941c233e4022acfcab63"

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
