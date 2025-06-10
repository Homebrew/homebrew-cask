cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.3"
  sha256 arm:   "79a35f189c6d881188a3570d61dc247544970f641e3487943c190a60a4a969ca",
         intel: "c4c73345d1cc5250be162647a110e4cc03e240f55e5d099a8ff4f68ba2351994"

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
