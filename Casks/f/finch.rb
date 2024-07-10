cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.2"
  sha256 arm:   "4a6ff6c24076401ddce0edb674913b927db154df5ac5a1bab8ca274fe5e264a4",
         intel: "66ce9ea12284e7bcaee5f1dd360cab25b25d80bacbf589e3c8de3e49368e972b"

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
