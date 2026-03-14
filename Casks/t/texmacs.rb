cask "texmacs" do
  arch arm: "arm", intel: "intel"

  version "2.1.5"
  sha256 arm:   "a2eee6a1cb47bfa8f770fc8160e871e882e29588befd3f639cd3885e62a3ae4a",
         intel: "feeb117943e6269e6b6f201d782e17f4bf80fbef9483ffb95b3c0ab363fd2636"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}-#{arch}-os11.0.dmg"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  livecheck do
    url "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TeXmacs.app"

  zap trash: [
    "~/.TeXmacs",
    "~/Library/Preferences/org.texmacs.TeXmacs.plist",
    "~/Library/Saved Application State/org.texmacs.TeXmacs.savedState",
  ]
end
