cask "cisdem-data-recovery" do
  version "17.2.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-datarecovery.dmg"
  name "Cisdem Data Recovery"
  desc "Recover lost data"
  homepage "https://www.cisdem.com/data-recovery-mac.html"

  livecheck do
    url "https://www.cisdem.com/js/notes/data-recovery-mac.js"
    regex(/(\d+(?:\.\d+)+)\s+\(\d+(?:-\d+)+\)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cisdem Data Recovery.app"

  zap trash: [
    "~/Library/Application Support/Cisdem",
    "~/Library/Application Support/com.easeus.datarecoverywizard",
    "~/Library/Preferences/com.easeus.datarecoverywizard",
    "~/Movies/CisdemRepair",
  ]
end
