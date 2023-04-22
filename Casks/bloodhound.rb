cask "bloodhound" do
  arch arm: "arm64", intel: "x64"

  version "4.3.0"
  sha256 arm:   "1d86c9e3eb7fe0980381f071b0416ba1f53f665c18b418b66c0ce2344d98a135",
         intel: "ebd36ece57ad0fefe730705480742620c4d189aa6a3d3a00d46504d1bd9741c9"

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
