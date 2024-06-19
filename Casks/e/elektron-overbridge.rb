cask "elektron-overbridge" do
  version "2.8.4,81d9083e-9d00-5cf4-8f24-b32cfb53fb53"
  sha256 "1cf6c2769cd88056906e59762faf26e783a06fea96ef51083653183a1c6e33c5"

  url "https://se-elektron-devops.s3.amazonaws.com/release/#{version.csv.second}/Elektron_Overbridge_#{version.csv.first}.dmg",
      verified: "se-elektron-devops.s3.amazonaws.com/"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge/"

  livecheck do
    url "https://www.elektron.se/us/download-support-overbridge-new"
    regex(%r{/([\w._-]+)/Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
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
