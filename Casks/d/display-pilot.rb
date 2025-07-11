cask "display-pilot" do
  version "1.6.7.0"
  sha256 "41d209f16f6c7f42f60d5d0496953ad0ac1d474f9d0d15ea6e2eceb249b0f5d9"

  url "https://qspublic.s3.ap-southeast-1.amazonaws.com/qspublic/qs_app/1001/Display%20Pilot%202Setup-#{version}-release.dmg",
      verified: "qspublic.s3.ap-southeast-1.amazonaws.com/qspublic/"
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
