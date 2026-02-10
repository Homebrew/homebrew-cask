cask "nugget" do
  version "7.2"
  sha256 "6340f130d48064eca6625e06363f2bdc9091c50878ae0a67b52f6213a32114cc"

  url "https://github.com/leminlimez/Nugget/releases/download/v#{version}/Nugget_macOS_arm.dmg"

  name "Nugget"
  desc "Unlock the fullest potential of your device"
  homepage "https://github.com/leminlimez/Nugget"

  livecheck do
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Nugget.app"

  zap trash: [
    "~/Library/Preferences/com.nugget.MGA Data.plist",
    "~/Library/Preferences/com.nugget.Nugget.plist",
    "~/Library/Preferences/com.nugget.settings.plist"
  ]
end
