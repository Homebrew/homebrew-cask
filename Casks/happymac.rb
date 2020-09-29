cask "happymac" do
  version :latest
  sha256 :no_check

  # chrislaffra.com/ was verified as official when first introduced to the cask
  url "https://chrislaffra.com/happymac/happymac.dmg"
  name "HappyMac"
  desc "Watches, suspends and resumes background processes that slow down your system"
  homepage "https://www.happymac.app/"

  depends_on macos: ">= :sierra"

  app "happymac.app"
end
