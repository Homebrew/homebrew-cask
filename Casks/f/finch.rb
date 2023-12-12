cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.1"
  sha256 arm:   "5c6ea76510590257b10686a9ba763096a574da08dc922f4c1eaa89302d7b6112",
         intel: "3097bba50c082f3a80868b84f68e9aac12c445ebaa2744ed8b17d8a4f0299dcc"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
