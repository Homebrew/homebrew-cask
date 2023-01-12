cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "e39dd54861863a61c1f97e162f51ae4b116d4fef4691efb6e17d5326fe0569a0",
         intel: "70c5bc7906f8c3d3aa7eaf6cbe1603883409a8b0e58875db5f1f068071899bb1"

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
