cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1.0,2026-10-29"
  sha256 arm:   "5eff07e08bec56173cdfe129cdff5cd0eb7faad3b67d718c0b481d2a0143da2a",
         intel: "2f87b8eeca3dce87badc85deccf516fd15be2bc072a6bd0526f47b390ad6d757"

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

  depends_on macos: :monterey

  app "Duplicati.app"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
  ]
end
