cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.17.1"
  sha256 arm:   "07f344c0596954ddd702821417cb41361488d03985efc4a31cde180318f677d3",
         intel: "e8d3c1040f3f0b77e05eaba69b3b6315e4f58fccea735e32e71da4b4499d5126"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
