cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "90d113aad84908287bb9ccb3d1739574e99e428db256c9d3a5f94c1618219e90",
         intel: "3df16a056b09f628d3126ca5ed104bbb84c1a62a13b82bd7a6ef8fcd94099260"

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
