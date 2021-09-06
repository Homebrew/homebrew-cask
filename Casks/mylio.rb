cask "mylio" do
  version "3.14.7255"
  sha256 :no_check

  url "https://myliodownloads.s3.amazonaws.com/Mylio.dmg",
      verified: "myliodownloads.s3.amazonaws.com/"
  name "Mylio"
  homepage "https://mylio.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "Mylio.app"
end
