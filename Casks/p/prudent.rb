cask "prudent" do
  version "29"
  sha256 "375970eadf59bab17e8add0057ea967b0376eb1385889d5b64f84a720e4dd4cb"

  url "https://github.com/PrudentMe/main/releases/download/#{version}/Prudent.zip",
      verified: "github.com/PrudentMe/main/"
  name "Prudent"
  desc "Integrated environment for your personal and family ledger"
  homepage "https://prudent.me/"

  app "Prudent.app"

  zap trash: [
    "~/Library/Application Support/Prudent",
    "~/Library/Caches/Pruent",
    "~/Library/Preferences/com.runningroot.prudent.plist",
    "~/Library/Saved Application State/com.runningroot.prudent.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
