cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.19.0"
  sha256 arm:   "bb42aa547c1a99d1e48f68907f02cf04b4186521901d6af185559805eeaf8dd9",
         intel: "62ad25cd694ec1927e871b986df358cc1f12d1abf7904633921e5e284c5474b7"

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
