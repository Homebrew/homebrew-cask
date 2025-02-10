cask "display-pilot" do
  version "1.5.3.0"
  sha256 "3ea5424491bee05849c03c7021b93c29f971d1637b9be5f6aca1a654a0caa6bc"

  url "https://qspublic.s3.ap-southeast-1.amazonaws.com/qspublic/qs_app/1001/Display%20Pilot%202Setup-#{version}-release.dmg",
      verified: "qspublic.s3.ap-southeast-1.amazonaws.com/qspublic/"
  name "Display Pilot 2"
  desc "Display control utility"
  homepage "https://www.benq.com/en-ap/monitor/software/display-pilot-2.html"

  livecheck do
    url "https://www.benq.com/en-ap/monitor/software/display-pilot-2/spec.html"
    regex(/macOS\s*<.*?>\s*v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :big_sur"

  app "Display Pilot 2.app"

  zap trash: "~/Library/Preferences/com.benq.DisplayPilot2.plist"
end
