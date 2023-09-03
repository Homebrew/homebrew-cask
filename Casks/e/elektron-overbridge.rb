cask "elektron-overbridge" do
  version "2.5.4,67decb78-1336-5227-9976-e40a0ead1119"
  sha256 "3736e0fe498775c9fd473ef87c33e89e787a6b56a9655d4c5b4bf9ee945fa1e0"

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

  pkg "Elektron Overbridge Installer #{version}.pkg"

  uninstall quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            launchctl: [
              "se.elektron.overbridge.engine",
              "asp.se.elektron.overbridge.coreaudio2",
            ],
            delete:    "/Applications/Elektron"
end
