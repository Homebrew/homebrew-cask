cask "mylio" do
  version :latest
  sha256 :no_check

  # myliodownloads.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://myliodownloads.s3.amazonaws.com/Mylio.dmg"
  name "Mylio"
  homepage "https://mylio.com/"

  app "Mylio.app"
end
