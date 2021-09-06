cask "boxy-suite" do
  version :latest
  sha256 :no_check

  url "https://boxyteam-static.s3.amazonaws.com/release/Boxy%20Suite.dmg",
      verified: "boxyteam-static.s3.amazonaws.com/release/"
  name "Boxy Suite"
  desc "Gmail, Calendar, Keep and Contacts apps"
  homepage "https://www.boxysuite.com/"

  app "Boxy for Gmail.app"
  app "Boxy for Calendar.app"
  app "Boxy for Keep.app"
  app "Boxy for Contacts.app"

  zap trash: "~/Library/Caches/co.boxyapp.gmail*"
end
