cask "elektron-overbridge" do
  version "2.13.4,10,2024"
  sha256 "4c64786cf1e0ec485de955f7cb688bed2a3fd7c0d91cd99389a76f9e5cee541c"

  url "https://elektron.se/wp-content/uploads/#{version.csv.third}/#{version.csv.second}/Elektron_Overbridge_#{version.csv.first}.dmg"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://elektron.se/overbridge"

  livecheck do
    url "https://elektron.se/support-downloads/overbridge"
    regex(%r{uploads/(\d+)/(\d+)/Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
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
