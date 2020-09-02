cask "marathon2" do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version "20200830"
  sha256 "a4c56cc2e837cec92bcded8406f5cb4cc7ddb7ce4472ac19e088120a47f18e50"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon 2.app"
end
