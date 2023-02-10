cask "mylio" do
  version "22.1.7551"
  sha256 :no_check

  url "https://myliodownloads.s3.amazonaws.com/Mylio.dmg",
      verified: "myliodownloads.s3.amazonaws.com/"
  name "Mylio"
  desc "Photo organizer"
  homepage "https://mylio.com/"

  app "Mylio.app"
end
