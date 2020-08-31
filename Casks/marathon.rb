cask "marathon" do
  version "20200830"
  sha256 "bc21a23c36cff504dd7fdd0e936d7c847ac3e557f4c44102f205609e1688cd33"

  # github.com/Aleph-One-Marathon/alephone/ was verified as official when first introduced to the cask
  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg"
  appcast "https://github.com/Aleph-One-Marathon/alephone/releases.atom"
  name "Marathon"
  homepage "https://alephone.lhowon.org/"

  app "Marathon.app"
end
