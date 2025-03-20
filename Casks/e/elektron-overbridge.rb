cask "elektron-overbridge" do
  version "2.18.5,03,2025"
  sha256 "43f6a9b0b075bf369e64c0b82e7914061c8892d8933a59e6d4f516f58afb25c9"

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
