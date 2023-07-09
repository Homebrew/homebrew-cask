cask "elektron-overbridge" do
  version "2.5.1"
  sha256 ""

  url "https://cdn.www.elektron.se/media/downloads/overbridge/Elektron_Overbridge_#{version.csv.first}.dmg"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge/"

  livecheck do
    url "https://www.elektron.se/us/download-support-overbridge-new"
    regex(
      %r{
        https?://(cdn\.)?(www\.)?elektron\.se/
          (media/)?(downloads/)?(overbridge/)?
            Elektron[._-]?Overbridge[._-]?v?(\d+(?:\.\d+)+)\.dmg
      }ix,
    )
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
