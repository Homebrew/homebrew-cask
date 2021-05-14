cask "openmtp" do
  version "3.1.5"
  sha256 "a5b36531c586659ec3b0869c5a5f586b4cc12ddcd5b17dbaed49800721c02bf9"

  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/OpenMTP-#{version}-mac.zip",
      verified: "github.com/ganeshrvel/openmtp/"
  name "OpenMTP"
  homepage "https://openmtp.ganeshrvel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenMTP.app"

  zap trash: [
    "~/.io.ganeshrvel",
    "~/Library/Application Support/io.ganeshrvel.openmtp",
    "~/Library/Application Support/OpenMTP",
    "~/Library/Preferences/io.ganeshrvel.openmtp.plist",
  ]
end
