cask "coverload" do
  version "2.1.1-752"
  sha256 "e6cee75fa95facfb3588d9435d7a92e492a2d7d8efc49a3f6aa302dda0f57aa2"

  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip",
      verified: "s3-us-west-2.amazonaws.com/coverloadapp.com/"
  name "CoverLoad"
  homepage "https://coverloadapp.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/CoverLoad-(\d+(?:\.\d+)*-\d+)\.zip}i)
  end

  app "CoverLoad.app"
end
