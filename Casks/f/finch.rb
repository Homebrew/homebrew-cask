cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.15.1"
  sha256 arm:   "e16d31debc03fb914c3df49e6dff43c4ad60521d3ad357a911933016bb073367",
         intel: "11f9d3549ca84770542ffcce3ffa421009b23054825cf0bbc38eb520732cc545"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  livecheck do
      url :url
      strategy :github_latest
  end

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
