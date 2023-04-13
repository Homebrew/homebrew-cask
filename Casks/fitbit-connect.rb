cask "fitbit-connect" do
  version "2.0.2.7241-2018-07-25"
  sha256 "464ccce6b3ea13c1836dd74e315270816fe15cb6e19276be1b189ba99ad5d346"

  url "https://cache.fitbit.com/FitbitConnect/FitbitConnect-v#{version}.dmg"
  name "Fitbit Connect"
  desc "Connect your Fitbit device"
  homepage "https://www.fitbit.com/"

  livecheck do
    url "https://www.fitbit.com/global/us/setup"
    regex(/href=.*?FitbitConnect[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  pkg "Install Fitbit Connect.pkg"

  uninstall script:  {
              executable: "Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            },
            pkgutil: "com.fitbit.pkg.GalileoInstaller"
end
