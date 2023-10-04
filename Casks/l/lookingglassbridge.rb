cask "lookingglassbridge" do
  arch arm: "m1", intel: "x64"

  version "2.3.2"
  sha256 arm:   "2c0af15fbb9110f95cc0107d1249a500beecbaa7b1c1b796e0c42f02214b6594",
         intel: "05c8bdc4ded39ea066272f8ed4ece12638ace4f56cd99ad36d89d91800b2fe02"

  url "https://dhtk4bwj5r21z.cloudfront.net/HoloPlayService/PublicLinks/#{version}/LookingGlassBridge-#{version}_#{arch}.pkg",
      verified: "dhtk4bwj5r21z.cloudfront.net/HoloPlayService/PublicLinks/"
  name "Looking Glass Bridge"
  desc "Required for Looking Glass applications and development tools"
  homepage "https://lookingglassfactory.com/"

  livecheck do
    url "https://lookingglassfactory.com/software/looking-glass-bridge"
    regex(/Version\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "LookingGlassBridge-#{version}_#{arch}.pkg"

  uninstall launchctl: "LookingGlassBridge",
            pkgutil:   "com..LookingGlassBridge.LOOKINGGLASSBRIDGEPKG"

  zap trash: "~/Library/Logs/DiagnosticReports/LookingGlassBridge*"
end
