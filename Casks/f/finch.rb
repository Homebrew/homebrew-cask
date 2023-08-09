cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:   "7e74db60b13196fd459ea9d4f016b373fad59bc1901c17ac13cc2b89a97f49c0",
         intel: "bbd19619c4175d487107b01f908c3f8f90be4bbb5bfbad5bb061ac41227155d8"

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
