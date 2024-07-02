cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.1"
  sha256 arm:   "c245165b6b109a8656a34b970fb20cab4665fb3ef1400d5bb4f9fd27337959c7",
         intel: "e46401a16816542db5438c34caa64e48cb3364d195cea6f1b12df4c1daa6ae6a"

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
