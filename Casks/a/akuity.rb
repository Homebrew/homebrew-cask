cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250808125513-a90a14194275"
  sha256 arm:          "295d1cc49ef454541c598c40d96b2b3dedba0efaebbcb79e638181d00878612a",
         intel:        "ac16b86abd5c07638b7a170ab6e57413ee5f9a377272ab568d8666d104037d3b",
         arm64_linux:  "b3f87308f9eb772b7c670c2e76eda54f84c5af95b4c2597c60293541b663dd4f",
         x86_64_linux: "d93ea137fe02fca1b63e657168de4d2f08b6edaf37b6662a95bbd10ed2749c8d"

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
