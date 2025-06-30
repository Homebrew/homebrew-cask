cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.0"
  sha256 arm:   "aa05f84dca5cb182b3f2a05296a169200edec7874a53ead13e3bcff135800d6e",
         intel: "4357c1872a5d439a26fec95e1ff747b383219755a25ced1698545dc84e468f19"

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
