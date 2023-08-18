cask "lookingglassbridge" do
  arch arm: "m1", intel: "x64"

  version "2.2.0"
  sha256 arm:   "f054187922a251ecb536c49e1cc63ebb4517f96417a6e931a0019b96422c8c64",
         intel: "a330372b0b2edc3d58cc6180f7e8fd6514e33c51d352f4107aa160b3ed006570"

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
