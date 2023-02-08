cask "sms-plus" do
  version "1.3.7"
  sha256 "f9dfd7223102cb12df8d2fd8ac0b15aab2e2f699978ff9d68974c7cbd6b33c59"

  url "https://www.bannister.org/software/dlh/smsplus-#{version.no_dots}.zip"
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
