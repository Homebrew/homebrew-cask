cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "7d6218732c794ef4f88f1126098c297ef9162df668aca61666836e1716f710ac",
         intel: "9927f9012a73203f5f3f5db37828ad669b443ca8cdeaa60d4130f3830d290db5"

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
