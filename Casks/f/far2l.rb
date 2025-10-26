cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.7.0"

  on_catalina :or_older do
    sha256 "7b07de07561f4243f7dcf2975d2236c6a3101463d4c3cfcfa6a8a6ea9b624f40"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "bdd73f85ac99b2a9655422c188c315d94c4db6e72dbc21d764ca0db2532ef186"

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

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
