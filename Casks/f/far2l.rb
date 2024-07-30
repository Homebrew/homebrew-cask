cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.6.3"

  on_mojave :or_older do
    sha256 "31466cfaf8eeb6412f9feea864fb9b0d16fdb2447864e7640f1e252663e9888c"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11-x64.dmg"
  end
  on_catalina do
    sha256 "bcf828a433c322911d241a4c65c5dc019ffb50734a6b1e14f06ccf51e5d75b58"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "cfac7d9d6c7ca46983b787da1fa92a225a335a7dec0e3a9c178deecff72eca61"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-11.2-universal.dmg"
  end

  name "far2l"
  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:\w)*)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
