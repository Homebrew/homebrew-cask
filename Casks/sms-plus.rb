cask "sms-plus" do
  version "1.3.6"
  sha256 "54133000ce64dcddffa16c6ac774f3208507b1fe77d6d190e8f3d671c26744dd"

  url "https://www.bannister.org/software/dlq/smsplus-#{version.no_dots}.zip"
  name "SMS Plus"
  desc "Sega Master System and Game Gear emulator"
  homepage "https://www.bannister.org/software/sms.htm"

  livecheck do
    url :homepage
    regex(/<h2>SMS\s+Plus\s+v?(\d+(?:\.\d+)+)[" <]/i)
  end

  depends_on macos: ">= :mojave"

  app "SMS Plus v#{version}/SMS Plus.app"

  zap trash: [
    "~/Library/Application Support/Bannister/SMS Plus",
    "~/Library/Preferences/com.bannister.smsplus.plist",
    "~/Library/Saved Application State/com.bannister.smsplus.savedState",
  ]
end
