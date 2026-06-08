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
    version "0.24.1"
    sha256 arm:   "064b51aba82d3a118b9e6e1f9274c93c091e9ec47987c5ed8c37ea62eb4caf51",
           intel: "b8c6747bd85a9643f1e4f7c91d540a96c2cac9d331956a4008553b489f69f407"

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
