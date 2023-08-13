cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.5.1"

  on_mojave :or_older do
    sha256 "5f35782c0ca09f2408e8c9764d1d2825b0b11fe13785c3bab45752399320d0e8"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11-x64.dmg"
  end
  on_catalina do
    sha256 "14cca152c80eed3a7161796268a0780bd794532a51a37d8e35d075b59787a336"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "2fdc9d2516c2349484f52532296197f8781d2f4bd7ea4c7937799529e26857b9"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-11.2-universal.dmg"
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
