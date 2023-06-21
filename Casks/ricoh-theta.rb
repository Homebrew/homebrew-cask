cask "ricoh-theta" do
  version "3.19.2,4"
  sha256 :no_check

  url "https://theta360-statics.s3.amazonaws.com/app/viewer/RICOH%20THETA.dmg",
      verified: "theta360-statics.s3.amazonaws.com/app/viewer/"
  name "RICOH THETA"
  desc "Companion software for 360 degree cameras"
  homepage "https://theta360.com/en/support/download/pcmac/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "RICOH THETA.app"
end
