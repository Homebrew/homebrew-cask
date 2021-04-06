cask "flic" do
  version "2.0.2"
  sha256 "46fad4ca0e69128b28906e8c2e7b785e39a1dc406a775a6c48184e8bf90869b6"

  url "https://misc-scl-cdn.s3.amazonaws.com/Flic.#{version}.zip",
      verified: "misc-scl-cdn.s3.amazonaws.com/"
  name "Flic"
  homepage "https://flic.io/mac-app"

  livecheck do
    url "https://flic.io/mac-app/download"
    strategy :header_match
  end

  app "Flic.app"
end
