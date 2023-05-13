cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "06cbddc61f7a42ab4c7d54602cbe3fa31c5ff470073896037a0cb8781c265dc5",
         intel: "873a09b36bf5db8513a2ba3e608ced0e8561569cd78bf7d22aea7d7fb1d594b6"

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
