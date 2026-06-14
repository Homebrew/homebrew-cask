cask "ctivo" do
  version "3.6.5"
  sha256 "4c9ff3ace390bd4afc4f988fd2830435d9afa0ae2a052a12771fe61789bd309f"

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo-#{version}.zip"
  name "cTiVo"
  desc "Download and convert Tivo shows"
  homepage "https://github.com/mackworth/cTiVo"

  livecheck do
    url "https://raw.github.com/mackworth/cTiVo/master/update/sparklecast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on :macos

  app "cTiVo.app"

  zap trash: [
    "~/Library/Application Support/com.cTiVo.cTiVo",
    "~/Library/Caches/com.crashlytics.data/com.cTiVo.cTiVo",
    "~/Library/Caches/com.cTiVo.cTiVo",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.cTiVo.cTiVo",
    "~/Library/Cookies/com.cTiVo.cTiVo.binarycookies",
    "~/Library/Logs/cTiVo",
    "~/Library/Preferences/com.cTiVo.cTiVo.plist",
    "~/Library/Saved Application State/com.cTiVo.cTiVo.savedState",
  ]
end
