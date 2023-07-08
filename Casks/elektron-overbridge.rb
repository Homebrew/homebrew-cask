cask "elektron-overbridge" do
  version "2.1.1.2,7fc48133-4bbc-5e3b-b646-c180686f9c2d"
  sha256 "b2a7b13a0dd4e971562d7668a9c0783c073c2be20756b762242c5480786c9af9"

  url "https://cdn.www.elektron.se/media/downloads/overbridge/Elektron_Overbridge_#{version.csv.first}.dmg"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge/"

  livecheck do
    url "https://www.elektron.se/us/download-support-overbridge-new"
    regex(%r{https?:\/\/(cdn\.)?(www\.)?elektron\.se\/(media\/)?(downloads\/)?(overbridge\/)?Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[5]}," }
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Elektron Overbridge Installer #{version.before_comma}.pkg"

  uninstall quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            launchctl: [
              "se.elektron.overbridge.engine",
              "asp.se.elektron.overbridge.coreaudio2",
            ],
            delete:    "/Applications/Elektron"
end
