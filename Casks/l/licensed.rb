cask "licensed" do
  version "1.5.1"
  sha256 :no_check

  url "https://amarsagoo.info/licensed/Licensed.dmg"
  name "Licensed"
  desc "Software license manager"
  homepage "https://amarsagoo.info/licensed/"

  livecheck do
    url :homepage
    regex(%r{>\s*Version\s*v?(\d+(?:\.\d+)+)[^<]*</}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Licensed.app"

  zap trash: [
    "~/Library/Application Support/Licensed",
    "~/Library/Preferences/com.asagoo.licensed.plist",
    "~/Library/Saved Application State/com.asagoo.licensed.savedState",
  ]
end
