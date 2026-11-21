cask "phocus" do
  version "4.1.1"
  sha256 "b6870f12c9c8e880bc2d2db19627acaf8152f06ad372c834f980ea726b34007b"

  release_version = version.csv.second || version.csv.first
  url "https://cdn.hasselblad.com/software/Phocus_for_Mac/#{version.csv.first}/Phocus_#{release_version}.dmg"
  name "Hasselblad Phocus"
  desc "RAW file image processing software for Hasselblad cameras"
  homepage "https://www.hasselblad.com/phocus/"

  livecheck do
    url "https://api.hasselblad.com/products/downloads/133/all"
    regex(%r{/v?(\d+(?:\.\d+)+)/Phocus[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match.values_at(1, 2).uniq.join(",")
      end
    end
  end

  depends_on macos: :monterey

  app "Phocus.app"

  zap trash: [
    "~/Library/Application Support/dk.hasselblad.phocus",
    "~/Library/Application Support/Phocus",
    "~/Library/Caches/dk.hasselblad.phocus",
    "~/Library/HTTPStorages/dk.hasselblad.phocus",
    "~/Library/Preferences/dk.hasselblad.phocus.plist",
    "~/Library/WebKit/dk.hasselblad.phocus",
  ]
end
