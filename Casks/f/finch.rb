cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.12.0"
  sha256 arm:   "e7d7cd6faab8e3fa95fa58053d24c3602d1e32ae6df53dc77d88d356fed7889a",
         intel: "016c376a912aa82e03af4aaabc30252893b58c3accafe02d0b9a52c5fd8689db"

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
