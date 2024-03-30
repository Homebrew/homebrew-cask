cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.3"
  sha256 arm:   "ab04c7116e25babd9c3f97a71d6999851499108d62da5b74ba6f07613aea754b",
         intel: "f495bc8b2326a6eaf8685096f67c8b9c7590e213e33ccf52887803dbc29abadf"

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
