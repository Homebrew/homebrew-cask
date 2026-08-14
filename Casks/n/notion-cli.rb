cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.22.3"
  sha256 arm:          "b120b3b31cfd557fa51f3414098e4b1649edcd2f54da5ecb34a146db78331c3b",
         intel:        "fa5501572ebacbe67c3ab9d309efd75f78a663cb9f08c3c8cf9086822ab62391",
         arm64_linux:  "84258cb1527bfd13b8e2a5e2962dfec0dc182c330ae3c18e00f072f4eb2657c5",
         x86_64_linux: "40ae4ff0174dfd07dd1679d09dd5500d3442adb84bcf7c213eb9349c47a40d8a"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
