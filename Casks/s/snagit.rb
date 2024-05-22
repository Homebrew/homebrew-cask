cask "snagit" do
  version "2024.2.5"
  sha256 "879f9fe721bda3e88cc58b126129cc60b60da41be33a20a340d21105d39726f7"

  url "https://download.techsmith.com/snagitmac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/snagit.dmg"
  name "Snagit"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/screen-capture.html"

  livecheck do
    url "https://www.techsmith.com/api/v/1/products/getallversions/100"
    strategy :json do |json|
      json.map do |item|
        next if item["Major"].blank? || item["Minor"].blank? || item["Maintenance"].blank?

        "20#{item["Major"]}.#{item["Minor"]}.#{item["Maintenance"]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "Snagit #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.TechSmith.Snagit*",
    "~/Library/Group Containers/*.com.techsmith.snagit",
    "~/Library/Preferences/com.TechSmith.Snagit*.plist",
    "~/Library/Preferences/com.techsmith.snagit.capturehelper*.plist",
    "~/Library/Saved Application State/com.TechSmith.Snagit*.savedState",
    "~/Library/WebKit/com.TechSmith.Snagit*",
  ]
end
