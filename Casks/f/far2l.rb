cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.8.0"

  on_catalina :or_older do
    sha256 "7b07de07561f4243f7dcf2975d2236c6a3101463d4c3cfcfa6a8a6ea9b624f40"

    url "https://github.com/elfmz/far2l/releases/download/v_#{version}/far2l-#{version}-beta-MacOS-10.15-x64.dmg"
  end
  on_big_sur :or_newer do
    sha256 "9891d468f1242c8a7728de0f04f4d07108186b50faeb3bbe230ef4f8305189c8"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
