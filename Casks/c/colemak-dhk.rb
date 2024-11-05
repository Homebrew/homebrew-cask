cask "colemak-dhk" do
  version "2.0.0"
  sha256 :no_check

  url "https://github.com/ColemakMods/mod-dh/archive/refs/heads/master.tar.gz",
      verified: "github.com/ColemakMods/mod-dh/"
  name "Colemak-DHk Keyboard Layout"
  desc "Colemak mod for more comfortable typing (DHk variant)"
  homepage "https://colemakmods.github.io/mod-dh/"

  livecheck do
    url "https://raw.githubusercontent.com/ColemakMods/mod-dh/master/macOS/Colemak%20DHk.bundle/Contents/Info.plist"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  keyboard_layout "mod-dh-master/macOS/Colemak DHk.bundle"

  # No zap stanza required

  caveats do
    logout
  end
end
