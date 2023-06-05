cask "bloodhound" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "48803fdefd4d4db8cf6d7e41004ddf2827022a8f848c3ce631ef06a4620c58da",
         intel: "c32aa388a7b0474dda483cc9b236cdfb5dd462d3d719b78e2985d7fa411f1a57"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/v#{version}/BloodHound-darwin-#{arch}.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-#{arch}/BloodHound.app"

  zap trash: [
    "~/Library/Application Support/bloodhound",
    "~/Library/Preferences/com.electron.bloodhound.plist",
    "~/Library/Saved Application State/com.electron.bloodhound.savedState",
  ]

  caveats <<~EOS
    According to https://github.com/BloodHoundAD/BloodHound/issues/504
    this app will not work with quarantine attributes.
  EOS
end
