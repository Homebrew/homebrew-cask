cask "coverload" do
  version "2.1.1-752"
  sha256 "e6cee75fa95facfb3588d9435d7a92e492a2d7d8efc49a3f6aa302dda0f57aa2"

  # s3-us-west-2.amazonaws.com/coverloadapp.com/ was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name "CoverLoad"
  homepage "https://coverloadapp.com/"

  app "CoverLoad.app"
end
