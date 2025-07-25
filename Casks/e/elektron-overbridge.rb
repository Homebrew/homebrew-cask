cask "elektron-overbridge" do
  version "2.21.3,caf823ee-6ade-5704-9a60-e59196ab46b7"
  sha256 "aa4b32ada6fdd0d5416bf6d0276842bdb8814d2f664acd7325c9fceadbaf8c3c"

  url "https://s3-eu-west-1.amazonaws.com/se-elektron-devops/release/#{version.csv.second}/Elektron_Overbridge_#{version.csv.first}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/se-elektron-devops/release/"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge"

  livecheck do
    url "https://www.elektron.se/support-downloads/overbridge"
    regex(%r{/([\h-]+)/Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version.csv.first}.pkg"

  uninstall launchctl: [
              "asp.se.elektron.overbridge.coreaudio2",
              "se.elektron.overbridge.engine",
            ],
            quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            delete:    "/Applications/Elektron"

  zap trash: [
    "~/Library/Application Support/Elektron Overbridge",
    "~/Library/Logs/Elektron Overbridge",
    "~/Library/Preferences/se.elektron.OverbridgeEngine.plist",
  ]
end
