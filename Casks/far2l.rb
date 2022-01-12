cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.4.0"

  name "far2l"
  if MacOS.version <= :mojave
    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11.dmg"
    sha256 "37e7bf7cf3b21221a09e7ffd0eec03da543721d66e04142705dbd7248e54db46"
  else
    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15.dmg"
    sha256 "92192c8aa2866cbb445bcb072d10d660f8145caeefb4aa35b8d0418ac7c31b8e"
  end

  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  livecheck do
    url "https://github.com/elfmz/far2l/releases"
    regex(%r{/v_([^/]+)/far2l-(\d+(?:\.\d+)+)-beta-MacOS-10\.11\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
