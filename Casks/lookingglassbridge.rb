cask "lookingglassbridge" do
  arch arm: "m1", intel: "x64"

  version "2.0.6"
  sha256 arm:   "66d1df8fbc90743df2010c56aca7a5ebc4422498cdf146b845c8aab6698d9a15",
         intel: "62ca176b62de3e84ae97e6e7a4040a48b126b94ca13ac0a91475e35c09939bbd"

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

  uninstall pkgutil: "com..LookingGlassBridge.LookingGlassBridgePkg"

  zap trash: "~/Library/Logs/DiagnosticReports/LookingGlassBridge*"
end
