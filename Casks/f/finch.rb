cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.17.0"
  sha256 arm:   "da4854127bdd9e6de704df64176a8ad21f3da18c0deba9476f007dda8fa8405f",
         intel: "e6e774eeaf99e16e6617ca2ab1abb219a87757110d87fbf0714a0012fbb12acf"

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
