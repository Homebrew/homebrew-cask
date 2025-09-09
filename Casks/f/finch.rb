cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.11.0"
  sha256 arm:   "40ab60034059d9163aa0f4a2efd10b0f00db0b355f8ef01dd5f0bbe156a0f309",
         intel: "a6bdecb79f7865292691dd424a9ebb6eab6c45dfbb3b7ccdd2ffa1cf7ab0c71b"

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
