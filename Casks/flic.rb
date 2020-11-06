cask "flic" do
  version "2.0.2"
  sha256 "46fad4ca0e69128b28906e8c2e7b785e39a1dc406a775a6c48184e8bf90869b6"

  # misc-scl-cdn.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://misc-scl-cdn.s3.amazonaws.com/Flic.#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://flic.io/mac-app/download"
  name "Flic"
  homepage "https://flic.io/mac-app"

  app "Flic.app"
end
