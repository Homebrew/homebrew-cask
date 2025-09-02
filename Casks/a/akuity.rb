cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250901054514-890176396ad2"
  sha256 arm:          "58a8a733bc5113c020a2facb6695909cfff059061929469a5d4fc7c2dc0ea833",
         intel:        "e89921def03a9a67f32f5792693972cb096bc25767678be740d3f0f8b5addb11",
         arm64_linux:  "c830c82bba570be39e65c381219f02f0316530747d2f70d9bcbdc6b8d324b4b3",
         x86_64_linux: "f5933c9a6f4268e0313cedd3cef76ce1ff1247dbddfba97200051a78b969c751"

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
