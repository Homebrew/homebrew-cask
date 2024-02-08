cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.5.3"

  on_mojave :or_older do
    sha256 "92664cbc5ac662e7fbd729458bc29556b99025949f83db1423b22233a58fd0d1"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11-x64.dmg"
  end
  on_catalina do
    sha256 "8b94145c13c7636e6cedfe0029ae3da0f0fdf1ac7ecc641ff4cb775c88ef4bf4"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "6ff8547359d73260b386d20639be5e034777131519cf7acc9b0270f0fb8fe57d"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-11.2-universal.dmg"
  end

  name "far2l"
  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  # This check should be updated to avoid unstable versions if/when stable
  # versions become available in the future.
  livecheck do
    url :url
    regex(/^\D*?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
