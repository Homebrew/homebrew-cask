cask "display-pilot" do
  version "1.9.0.0,251126155504"
  sha256 "9e436f02957b68ac3b8247ef4933799e940bb5352f08b95b4549b3fa0e5316bc"

  url "https://esupportdownload.benq.com/esupport/VERTICAL%20&%20PROFESSIONAL%20DISPLAY/Software/Display%20Pilot%202/Display%20Pilot%202%20for%20Mac_v#{version.csv.first}_Mac_#{version.csv.second}.zip"
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

  app "Display Pilot 2.app"

  zap trash: "~/Library/Preferences/com.benq.DisplayPilot2.plist"
end
