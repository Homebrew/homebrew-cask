cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "f0d2fe5679f62013ba03cff834352ba5c29c12ad1238204df04f3026dea03ec2",
         intel: "81dc0bf849bc8b188f1724a3efd0e57b2d741a19982ed6424b597d1da7898e25"

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
