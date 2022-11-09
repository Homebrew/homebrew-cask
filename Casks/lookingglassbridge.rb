cask "lookingglassbridge" do
  arch arm: "m1", intel: "x64"

  version "2.0.9"
  sha256 arm:   "527d453c3f8243fd3987abff943bdad1e2a7cd1058e2e958c755f26a858914e6",
         intel: "7ab4c50b3c2e7fca35c020b20b9327a3e1bb3155fa70f43421ff8d5498015dbb"

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
