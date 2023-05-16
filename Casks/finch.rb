cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "192e0c6151c155d8c5fd69dc4acecb611e2393750fd908e008e653475f5ed0ab",
         intel: "fad8cb1f272aecd6c9e208a62e492ca661d6c914f5c36a01b508de2ca0554352"

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
