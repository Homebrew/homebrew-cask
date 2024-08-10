cask "bluej" do
  arch arm: "aarch64", intel: "x64"

  version "5.4.0"
  sha256 arm:   "cfcd795ad3a68091393262dbfe8f231d64a60cd1b7a95615182e066a2095a925",
         intel: "e572466db64817734ef5e7363a05766c49b0295116a7b55da4454a2c21197dfa"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{arch}-#{version.no_dots}.dmg"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
