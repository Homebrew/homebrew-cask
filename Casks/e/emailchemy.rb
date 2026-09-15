cask "emailchemy" do
  arch arm: "-AppleSilicon"

  version "15.0"
  sha256 :no_check

  url "https://wksdownload.s3.amazonaws.com/emailchemy/Emailchemy-Mac#{arch}.dmg"
  name "Emailchemy"
  desc "Email migration, conversion and archival software"
  homepage "https://weirdkid.com/emailchemy/"

  livecheck do
    url "https://weirdkid.com/emailchemyversionhistory/"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Emailchemy.app"

  zap trash: "~/Library/Preferences/com.weirdkid.es.plist"
end
