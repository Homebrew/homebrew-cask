cask "emailchemy" do
  version "14.6"
  sha256 :no_check

  url "https://wksdownload.s3.amazonaws.com/emailchemy/Emailchemy-Mac.dmg",
      verified: "wksdownload.s3.amazonaws.com/emailchemy/"
  name "Emailchemy"
  desc "Email migration, conversion and archival software"
  homepage "https://weirdkid.com/emailchemy/"

  livecheck do
    url "https://weirdkid.com/emailchemyversionhistory/"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  app "Emailchemy.app"
end
