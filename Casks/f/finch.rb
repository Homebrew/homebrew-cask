cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.2"
  sha256 arm:   "64e49c6238f59ebe56ed5d1c094fe87fea04118757aa2a26aea9d6efa3bd1533",
         intel: "043a80b372059f19b3b6afaa7af545df9950bb937b8019e3f646ac50d282c663"

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
