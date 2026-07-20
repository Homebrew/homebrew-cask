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
    version "0.25.0"
    sha256 arm:   "ce5bfc6504b49c6853cbdc417754508ad8326bb8897df24dfc6e02eab596f1e9",
           intel: "29682342c5b56ab137b8b60b8d3b24533acbb600ec293415dda43b889fbf57e8"

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
