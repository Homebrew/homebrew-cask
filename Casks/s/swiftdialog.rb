cask "swiftdialog" do
  version "3.0.1,4955"
  sha256 "8977a08d706a4615b6c48b6b47badf0fd61cd6c9904c7a4712aa4431c612f385"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v#{version.csv.first}/dialog-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog"
  desc "Admin utility that presents custom dialogs or messages from shell scripts"
  homepage "https://swiftdialog.app/"

  livecheck do
    url :url
    regex(/dialog[._-](\d+(?:\.\d+)+)[._-](\d+)\.pkg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :sequoia"

  pkg "dialog-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil: "au.csiro.dialogcli"

  zap trash: [
    "/Library/Application Support/Dialog",
    "/Library/Preferences/au.csiro.dialog.plist",
  ]
end
