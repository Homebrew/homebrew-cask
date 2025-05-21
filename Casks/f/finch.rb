cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.2"
  sha256 arm:   "ebd86d457875ded4dbfd5d6a4234b9acadf4ccba089d3c7cdd627b6301b26950",
         intel: "d94c310e376f71ad12a48178ecb4aefd51d60bcbb5346e04634e56de2a73716a"

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
