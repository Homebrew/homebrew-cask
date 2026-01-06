cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0.3,2026-01-06"
  sha256 arm:   "36a246569d3788071d10f6ce29d70499983da8cda52df9a43ef418db5bb8e676",
         intel: "7b50bb461f7fe27899635003379f5df60303395efc06699a6aec5115e6901098"

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

  depends_on macos: ">= :big_sur"

  app "Duplicati.app"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
  ]
end
