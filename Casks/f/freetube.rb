cask "freetube" do
  arch arm: "arm64", intel: "x64"

  on_big_sur :or_older do
    on_catalina do
      version "0.22.1"
      sha256 "0e9eb9db841f36671c81fedff4580c39dbbd6bd541d5158ed4897218c4134946"

      url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac-x64.dmg",
          verified: "github.com/FreeTubeApp/FreeTube/"
    end

    on_big_sur do
      version "0.23.15"
      sha256 arm:   "6a25f689ecf0382c9b3c98be308f5d97eda1c362035dd1d715307a25ab68320a",
             intel: "ebade3bc4b3cb7c994201cf1bd50459c33c8b4d85ae0e714b2c5a32612c70e69"

      url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-beta-mac-#{arch}.dmg",
          verified: "github.com/FreeTubeApp/FreeTube/"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "0.25.1"
    sha256 arm:   "f097978ca3e04c76ec131e0befb6771de9fb3a3d19aa650a4e9cf28c88945734",
           intel: "ee49e38fde69df3670a061c30268fac55f1a52ff73dafa5c06b2946a06e6376f"

    url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-beta-mac-#{arch}.dmg",
        verified: "github.com/FreeTubeApp/FreeTube/"

    livecheck do
      url :url
      regex(/^v?(\d+(?:\.\d+)+)/i)
    end
  end

  name "FreeTube"
  desc "YouTube player focusing on privacy"
  homepage "https://freetubeapp.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "FreeTube.app"

  uninstall quit: "io.freetubeapp.freetube"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.freetubeapp.freetube.sfl*",
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]
end
