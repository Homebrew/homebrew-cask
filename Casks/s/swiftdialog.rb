cask "swiftdialog" do
  version "2.5.6,4805"
  sha256 "69bd7f6412a1b2393906fc059369e65c5ae58af5cc8d289467effd11d8862b2a"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v#{version.csv.first}/dialog-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog"
  desc "Admin utility that presents custom dialogs or messages from shell scripts"
  homepage "https://swiftdialog.app/"

  livecheck do
    url "https://api.github.com/repos/swiftDialog/swiftDialog/releases/latest"
    regex(/dialog[._-](\d+(?:\.\d+)+)[._-](\d+)\.pkg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :monterey"

  pkg "dialog-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil: "au.csiro.dialogcli"

  zap trash: [
    "/Library/Application Support/Dialog",
    "/Library/Preferences/au.csiro.dialog.plist",
  ]
end
