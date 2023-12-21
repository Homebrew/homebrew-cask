cask "elektron-overbridge" do
  version "2.7.3,25cf858c-d32c-5bd8-b43b-ce01219081ba"
  sha256 "dfc839d6cc6226353d36dca0b140f19cfb7cf89f3d186b08381bee1f1c5b6835"

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
              "se.elektron.overbridge.engine",
              "asp.se.elektron.overbridge.coreaudio2",
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
