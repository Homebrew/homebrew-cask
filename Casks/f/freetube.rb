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
    version "0.23.13"
    sha256 arm:   "aad0886f11381f35fc5802e9133fe9fd4e99d92da61d4f565b894f693bd14905",
           intel: "0954bed77c8b940fbfe9a2736396847acb68ec417948f9089bd085464d062e79"

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
