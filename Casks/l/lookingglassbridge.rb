cask "lookingglassbridge" do
  arch arm: "m1", intel: "x64"

  version "2.3.0"
  sha256 arm:   "d1f3223ac2b3c617d810f69050383b7e529afe62118b8efa91e1d0f983f27f98",
         intel: "fad181c97d5217f7f976a6845242fb158a12af8641df8be7e37dad9966ca8237"

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
