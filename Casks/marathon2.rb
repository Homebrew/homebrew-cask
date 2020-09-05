cask "marathon2" do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version "20200904"
  sha256 "55d1e7b595089adc4fdaf455742f3b373e730bc22c24204bffa5a884f78a14c3"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon 2.app"
end
