cask "elektron-overbridge" do
  version "2.7.13,31ec56e9-963b-5a69-ba50-7d422453d874"
  sha256 "5a540060632941a2d527c7f0974716601a4777b0b7d43f5dabd4ec92b5e3be0f"

  url "https://s3-eu-west-1.amazonaws.com/se-elektron-devops/release/#{version.csv.second}/Elektron_Overbridge_#{version.csv.first}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/se-elektron-devops/"
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
