cask "happymac" do
  version "0.1.0"
  sha256 "a3f5f4fda00e8bffcd81450f2978dd720b36bfccf7b6f1c204ace2bed41d6ed8"

  # chrislaffra.com was verified as official when first introduced to the cask
  url "https://chrislaffra.com/happymac/happymac.dmg"
  name "HappyMac"
  desc "Watches, suspends and resumes background processes that slow down your system"
  homepage "https://www.happymac.app/"

  auto_updates false
  depends_on macos: ">= :sierra"

  app "HappyMac.app"
end
