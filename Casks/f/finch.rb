cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "484e961bb99cfea03820abc5ddb6519e865b6075950ec4cb945a610f3dc10e42",
         intel: "8a36faaa6ca854836d03f41e7ab47eef3f3ed1c76b5f2d53e6262961dfc86962"

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
