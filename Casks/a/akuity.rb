cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251122063616-a2aa85895382"
  sha256 arm:          "605b26763ece0acc9aad19795deab8be281d18f47835780e48e7dc522666c4a4",
         intel:        "4b7561c13ff1ccbad7048f2f9dc4a609ae7046f6a6482b4d0cd17b1dabc55140",
         arm64_linux:  "61da643376051de3eb2cdced37896f2b3eeb547a8f321dcc17f9020be080aa8a",
         x86_64_linux: "d3983c47c2dcf7cee611cdc406e3b4217accab783dff8b233a59a8a5a07d00c7"

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
