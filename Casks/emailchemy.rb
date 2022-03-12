cask "emailchemy" do
  version "14.4.5"
  sha256 :no_check

  url "https://s3.amazonaws.com/wksdownload/emailchemy/Emailchemy-Mac.dmg",
      verified: "s3.amazonaws.com/wksdownload/emailchemy/"
  name "Emailchemy"
  desc "Email migration, conversion and archival software"
  homepage "https://weirdkid.com/emailchemy/"

  livecheck do
    url "https://weirdkid.com/emailchemyversionhistory"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Emailchemy.app"
end
