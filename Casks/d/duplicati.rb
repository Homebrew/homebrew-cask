cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0.0,2025-10-23"
  sha256 arm:   "d892c79b3af34ee72f411a974b3ef8e14b9afc3a3ef6836f51838eb127d42348",
         intel: "afae3bc72eaa69b72c6a05a73568d5239c93f5c3faa5f7e4e757c60cda249987"

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
