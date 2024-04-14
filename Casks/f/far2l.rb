cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.6.1"

  on_mojave :or_older do
    sha256 "96951ada3df6dcaf6fad0732c58b1347ee9f46f8abcded30201029d646d89b25"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.11-x64.dmg"
  end
  on_catalina do
    sha256 "830512808ebfc0a8ba9f2348e59d444a289bda9a0ad9983dc027843c9dd5cc6d"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "edc3b26cfa21f2f832b4adcda45991123ddca091e33c87a99d82d8029cfc84d2"

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
