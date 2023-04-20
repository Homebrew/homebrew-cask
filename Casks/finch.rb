cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "bb47b390b7fb4b503843bb57de60b9152538ff81291e17e85baca39263eff87d",
         intel: "d2cd31f26054b6efdc9b33b8ff3e174408dbf46228ed8cae0d3fc7e9a9e74b3f"

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
