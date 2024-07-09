cask "boxy-suite" do
  version "2.1.4"
  sha256 :no_check

  url "https://boxyteam-static.s3.amazonaws.com/release/Boxy%20Suite.dmg",
      verified: "boxyteam-static.s3.amazonaws.com/release/"
  name "Boxy Suite"
  desc "Gmail, Calendar, Keep and Contacts apps"
  homepage "https://www.boxysuite.com/"

  livecheck do
    url "https://www.boxysuite.com/updates/"
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Boxy for Gmail.app"
  app "Boxy for Calendar.app"
  app "Boxy for Keep.app"
  app "Boxy for Contacts.app"

  zap trash: "~/Library/Caches/co.boxyapp.gmail*"

  caveats do
    requires_rosetta
  end
end
