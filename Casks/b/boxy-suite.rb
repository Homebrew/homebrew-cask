cask "boxy-suite" do
  version "3.0.0"
  sha256 :no_check

  url "https://boxysuite.s3.amazonaws.com/release/Boxy%20Suite.dmg",
      verified: "boxysuite.s3.amazonaws.com/release/"
  name "Boxy Suite"
  desc "Gmail, Calendar, Keep and Contacts apps"
  homepage "https://www.boxysuite.com/"

  livecheck do
    url "https://boxysuite.s3.amazonaws.com/appcast/gmail.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Boxy for Gmail.app"
  app "Boxy for Calendar.app"
  app "Boxy for Keep.app"
  app "Boxy for Contacts.app"

  zap trash: "~/Library/Caches/co.boxyapp.gmail*"
end
