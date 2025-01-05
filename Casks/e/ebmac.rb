cask "ebmac" do
  version "1.47.0"
  sha256 "8038fbdd306a4c6eb10680bcfa04dca873c86cbe7c2b82c4875d73de1c3043d3"

  url "https://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  name "EBMac"
  desc "Electronic dictionary viewer"
  homepage "https://ebstudio.info/manual/EBMac/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/EBMacv?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "EBMac.app"

  zap trash: [
    "~/Library/Application Support/EBMac",
    "~/Library/Preferences/info.ebstudio.EBMac.plist",
    "~/Library/Saved Application State/info.ebstudio.EBMac.savedState",
  ]
end
