cask "emailchemy" do
  version :latest
  sha256 :no_check

  # wksdownload.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wksdownload.s3.amazonaws.com/Emailchemy-Mac.dmg"
  name "Emailchemy"
  homepage "https://weirdkid.com/emailchemy/"

  app "Emailchemy.app"
end
