cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "934f0718b54be5cfd5085d0e851bcd18a41e2cbc098803789063e6faa8e51fce",
         intel: "9cf7b732f450c7116b450220a3933a17b63733f0dd2e6f794abf1e6e9701c8a1"

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
