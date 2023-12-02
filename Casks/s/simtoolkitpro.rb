cask "simtoolkitpro" do
  version "1.2.3"
  sha256 "88de297d96c508b0332c6adb969b88783fbac665f8527ee25cc0e3dbffa4352a"

  url "https://github.com/simtoolkitpro/stkp-client-releases/releases/download/v#{version}/SimToolkitPro-#{version}-x64.Setup.dmg",
      verified: "github.com/simtoolkitpro/stkp-client-releases/"
  name "simtoolkitpro"
  desc "EFB Software for your simulator"
  homepage "https://simtoolkitpro.co.uk/"

  livecheck do
    url "https://github.com/simtoolkitpro/stkp-client-releases"
    regex(/^v(\d+\.\d+\.\d+)$/i)
    strategy :github_releases
  end

  auto_updates true

  app "SimToolkitPro.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/SimToolkitPro_*.plist",
    "~/Library/Application Support/simtoolkitpro",
    "~/Library/Logs/SimToolkitPro",
    "~/Library/Preferences/xyligo.stkp.plist",
    "~/Library/Saved Application State/xyligo.stkp.savedState",
    "~/Documents/SimToolkitPro",
  ]
end
