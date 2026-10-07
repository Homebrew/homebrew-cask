cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0.1,2026-10-07"
  sha256 arm:   "125f1a3b20bdb79b3bbd02c73abcf4e8b8cc35bc73fa4bfb79fae61bcb82b9d3",
         intel: "4404e111e6c12f0af95ffc35f52943e1b7131d286111b44116454a6ef54cd980"

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
