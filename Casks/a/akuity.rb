cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250716095338-e733b1c27320"
  sha256 arm:          "5d6eddecd9477516619a08cfb41dace1f4193c79ab103d54c20aab72d1216c39",
         intel:        "ee667be35c1505bd52cb2ede84dcbae1e10f9128057a0319ea098a6f63e9f5a0",
         arm64_linux:  "083d9ed97ad94e76c8defc35ffe6cb91a71b3faf52bc4132edc0bdcc589d663e",
         x86_64_linux: "339cb88dc1ab65b7a7c06c19f756c3121d225f22de6799b33170274e961a7aa6"

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
