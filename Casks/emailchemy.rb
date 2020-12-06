cask "emailchemy" do
  version "14.4"
  sha256 :no_check

  # s3.amazonaws.com/wksdownload/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/wksdownload/emailchemy/Emailchemy-Mac.dmg"
  name "Emailchemy"
  homepage "https://weirdkid.com/emailchemy/"

  app "Emailchemy.app"
end
