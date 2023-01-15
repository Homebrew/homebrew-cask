cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.5.0"

  on_mojave :or_older do
    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11.dmg"
    sha256 "f2c1740d1ce950aa7643c44184339ec13056d5a41169c536cb58616014229d3e"
  end
  on_catalina :or_newer do
    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15.dmg"
    sha256 "9cdde68842f5bfd8e0eda9fdab6507e47eeda2b7a8a6941a8a5966fe89a97435"
  end

  name "far2l"
  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  # This check should be updated to avoid unstable versions if/when stable
  # versions become available in the future.
  livecheck do
    url "https://github.com/elfmz/far2l/releases"
    regex(%r{href=["']?[^"' >]*?/tree/[^"' >]*?(\d+(?:\.\d+)+)(?:[._-]?(?:alpha|beta))?["' >]}i)
    strategy :page_match
  end

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
