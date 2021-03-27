cask "mylio" do
  version "3.13.7157"
  sha256 :no_check

  url "https://myliodownloads.s3.amazonaws.com/Mylio.dmg",
      verified: "myliodownloads.s3.amazonaws.com/"
  name "Mylio"
  homepage "https://mylio.com/"

  app "Mylio.app"
end
