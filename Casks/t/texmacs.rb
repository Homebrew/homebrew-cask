cask "texmacs" do
  arch arm: "-arm"

  version "2.1.4"
  sha256 arm:   "baf36986247c8df2b7301a47f773eba9556e36235d2bac062e68405e65316bff",
         intel: "2d2640feca9e755ff1a056786a6776f52329e6084d2f924ab0f7e98609571ee7"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}#{arch}.dmg"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  livecheck do
    url "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
    strategy :sparkle
  end

  app "TeXmacs.app"

  zap trash: [
    "~/.TeXmacs",
    "~/Library/Preferences/org.texmacs.TeXmacs.plist",
    "~/Library/Saved Application State/org.texmacs.TeXmacs.savedState",
  ]
end
