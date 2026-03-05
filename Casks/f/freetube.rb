cask "freetube" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "0.22.1"
    sha256 "0e9eb9db841f36671c81fedff4580c39dbbd6bd541d5158ed4897218c4134946"

    url "https://github.com/FreeTubeApp/FreeTube/releases/download/v#{version}-beta/freetube-#{version}-mac-x64.dmg",
        verified: "github.com/FreeTubeApp/FreeTube/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "0.23.14"
    sha256 arm:   "6a4db9ac1bc5bf67b7173956530dbf9e77726ccaa3c62067f41cf1e2c5bce33d",
           intel: "16839333bb464a57cfd9c7687d875316ef61d89fc351501ce7776a88519398b4"

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

  app "FreeTube.app"

  uninstall quit: "io.freetubeapp.freetube"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.freetubeapp.freetube.sfl*",
    "~/Library/Application Support/FreeTube",
    "~/Library/Preferences/io.freetubeapp.freetube.plist",
    "~/Library/Saved Application State/io.freetubeapp.freetube.savedState",
  ]
end
