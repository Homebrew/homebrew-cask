cask "fastscripts" do
  version "2.8.2"
  sha256 "3f14a8cb630372753aae843852c2a55ada9e7fe3eba06a1208086bb4ee99234c"

  url "https://red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast "https://red-sweater.com/fastscripts/appcast2.php"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://red-sweater.com/fastscripts/"

  depends_on macos: ">= :sierra"

  app "FastScripts.app"
end
