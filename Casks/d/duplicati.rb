cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0.5,2025-03-04"
  sha256 arm:   "f49184dcd6b2d852cafc2b46ba9b28a61c69e7cb115dd077261ea74c2ca58d02",
         intel: "4362c0db54a4c4dfdbd71a8b933c6c9b838eb466809c5121fcd18a0bdf7b4fe8"

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

  app "Duplicati.app"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
  ]
end
