cask "cisdem-data-recovery" do
  version "13.9.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-datarecovery.dmg"
  name "Cisdem Data Recovery"
  desc "Recover lost data"
  homepage "https://www.cisdem.com/data-recovery-mac.html"

  livecheck do
    url "https://www.cisdem.com/js/notes/data-recovery-mac.js"
    regex(/(\d+(?:\.\d+)+)\s+\(\d+(?:-\d+)+\)/)
  end

  depends_on macos: ">= :sierra"

  app "Cisdem Data Recovery.app"
end
