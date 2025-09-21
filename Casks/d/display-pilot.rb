cask "display-pilot" do
  version "1.7.0.0,250820135838"
  sha256 "fedd1a079fc0bca3736d12ffb44f465f7025e93e6f9787b7108364cb1861b92d"

  url "https://esupportdownload.benq.com/esupport/VERTICAL%20&%20PROFESSIONAL%20DISPLAY/Software/Display%20Pilot%202/Display%20Pilot%202%20for%20Mac_V#{version.csv.first}_Mac_#{version.csv.second}.zip"
  name "Display Pilot 2"
  desc "Display control utility"
  homepage "https://www.benq.com/en-ap/monitor/software/display-pilot-2.html"

  # The only checkable source of version information requires a referer to work,
  # so we're skipping this for now.
  # See: https://github.com/Homebrew/homebrew-cask/pull/219373#issuecomment-3054380576
  livecheck do
    skip "Requires referer for request to work"
  end

  depends_on macos: ">= :big_sur"
  container nested: "DisplayPilot2-Setup-#{version.csv.first}/Display Pilot 2Setup-#{version.csv.first}-release.dmg"

  app "Display Pilot 2.app"

  zap trash: "~/Library/Preferences/com.benq.DisplayPilot2.plist"
end
