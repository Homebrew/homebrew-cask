cask "emailchemy" do
  version "14.4"
  sha256 :no_check

  url "https://s3.amazonaws.com/wksdownload/emailchemy/Emailchemy-Mac.dmg",
      verified: "s3.amazonaws.com/wksdownload/"
  name "Emailchemy"
  homepage "https://weirdkid.com/emailchemy/"

  app "Emailchemy.app"
end
