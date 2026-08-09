cask "cisdem-data-recovery" do
  version "20.6.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-datarecovery.dmg",
      user_agent: :fake
  name "Cisdem Data Recovery"
  desc "Recover lost data"
  homepage "https://www.cisdem.com/data-recovery-mac.html"

  livecheck do
    url "https://www.cisdem.com/data-recovery-mac/release-notes.html"
    regex(/(\d+(?:\.\d+)+)\(\d+(?:-\d+)+\)/i)
  end

  depends_on :macos

  app "Cisdem Data Recovery.app"

  zap trash: [
    "~/Library/Application Support/Cisdem",
    "~/Library/Application Support/com.easeus.datarecoverywizard",
    "~/Library/Preferences/com.easeus.datarecoverywizard",
    "~/Movies/CisdemRepair",
  ]
end
