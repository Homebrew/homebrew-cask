cask "aleph-one" do
  version "20200830"
  sha256 "690de4bf50086f021181aed0b98c4fe2b0a35bf66a3df04c50910763eb071ec7"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/AlephOne-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Aleph One"
  homepage "https://alephone.lhowon.org/"

  app "Aleph One.app"
end
