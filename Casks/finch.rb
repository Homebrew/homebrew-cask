cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "e7900bbb8bbb9b5fe9dc14bfcfb05d6cef15b9cc50b1e2062b314f072eebf47b",
         intel: "3d0402579ffb788eab0e3be04b984726d4ce5830af03423c66f9a179fda8bfcc"

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
