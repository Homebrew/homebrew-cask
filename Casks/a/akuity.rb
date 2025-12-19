cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251218213741-b19bc5f3aaf0"
  sha256 arm:          "75b695af17409569313b186a00caf14e26b1030339f12e093824da386226749f",
         intel:        "585e988f642eb76aaecce8612aa302a60619f71171fd4794f9ddd70f43d6866b",
         arm64_linux:  "e348c3a7e402dba081c5431ea3f195df1d22e77ec5d11943773553067d54ba3c",
         x86_64_linux: "033fcb84dbd32d55fe317f4b9c01abe0765ea278f69b7aaac3aade1d73fda2ac"

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
