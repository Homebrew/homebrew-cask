cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.4.1"

  if MacOS.version <= :mojave
    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11.dmg"
    sha256 "f2c1740d1ce950aa7643c44184339ec13056d5a41169c536cb58616014229d3e"
  else
    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15.dmg"
    sha256 "7bcce47fda76eeac00e24b36d8b80f80d30241f0f1d21b22034f93f788bba66d"
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
