cask "lookingglassbridge" do
  arch arm: "m1", intel: "x64"

  version "2.1.0"
  sha256 arm:   "25944dc0cd53be496145bd6e07b4dbeef6ba4c89e26942609c7d2ddc5e4e4105",
         intel: "42965a66eae964f325d3bc6b12af93db5ec3ad62d9807fec0f56f1a66606ee90"

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
