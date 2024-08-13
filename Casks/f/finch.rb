cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.3"
  sha256 arm:   "d61f17d2e87a2f2d9d64bb26a95e7c9ec34aadbaed73987dc8d4d5dbb9484ec0",
         intel: "3bf1150455b4dac50740dfee6f5d9c6e76508b62013136ef54e7a153b4f8ca96"

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
