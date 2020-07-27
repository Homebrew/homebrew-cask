cask "boxy-suite" do
  version :latest
  sha256 :no_check

  url "https://www.boxysuite.com/direct_download"
  name "Boxy Suite"
  homepage "https://www.boxysuite.com/"

  app "Boxy Dashboard.app"
  app "Boxy for Gmail.app"
  app "Boxy for Calendar.app"
  app "Boxy for Keep.app"
  app "Boxy for Contacts.app"
end
