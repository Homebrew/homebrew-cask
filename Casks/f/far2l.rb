cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.6.5"

  on_mojave :or_older do
    sha256 "982e5191a4561fb291a962e01853c2396436b77e44700dedfba9f1b06d3fb632"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11-x64.dmg"
  end
  on_catalina do
    sha256 "32c41c8be644e5182d8adb6d111cc42912444dc443fdfff98e61dfe7af56ecbf"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "8069beecc1808a22172efb29a788d8c11921e0669a77d26bbaee95274b6d8c54"

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
