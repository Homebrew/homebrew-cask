cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0.1,2026-04-24"
  sha256 arm:   "6e68eb917b746a4720a020466d971da8f8b6ae5bfd35cdef675f903ade2772cb",
         intel: "e0219650a2ab3efc115864ca07c7c17fd4354b804b7561299bf729234fdae07e"

  url "https://updates.duplicati.com/stable/duplicati-#{version.csv.first}_stable_#{version.csv.second}-osx-#{arch}-gui.dmg"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud"
  homepage "https://duplicati.com/"

  livecheck do
    url "https://updates.duplicati.com/stable/latest-v2.manifest"
    regex(/duplicati[._-]v?(\d+(?:\.\d+)+)[._-]stable[._-](\d+(?:[.-]\d+)+)[._-]osx[._-]#{arch}[._-]gui\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :monterey"

  app "Duplicati.app"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
  ]
end
