cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0.3,2025-01-22"
  sha256 intel: "65df38a887144c81e3783777f2ec7637c8468e2b95efed235cf8b13082a0aade",
         arm:   "7f26fc3c3352b0731b7643cf3d12c79ea5719b29f224321d7872d4a7e384a627"

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
