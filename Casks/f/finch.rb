cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.1"
  sha256 arm:   "034beffae0bb0baae97e905cd5d0fae1dad35896029cc09cc5624f9f988482ac",
         intel: "0e1232f7ba502bc517d93509833d88c03f17bc4f3e5eedfda563c2a48947e24e"

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
