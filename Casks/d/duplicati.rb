cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0.2,2024-11-29"
  sha256 intel: "62045156094c0796c2d9631068ea6746ec24f704b166e8bdb36a0158ea7395af",
         arm:   "fc69b70df98b8966731aeddd94abe15dae1e1033e405d47e4082e16789c2d8ac"

  url "https://updates.duplicati.com/beta/duplicati-#{version.csv.first}_beta_#{version.csv.second}-osx-#{arch}-gui.dmg"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud"
  homepage "https://www.duplicati.com/"

  livecheck do
    url "https://updates.duplicati.com/beta/latest-v2.manifest"
    regex(/duplicati[._-]v?(\d+(?:\.\d+)+)[._-]beta[._-](\d+(?:[.-]\d+)+)[._-]osx[._-]#{arch}[._-]gui\.dmg/i)
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
