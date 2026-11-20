cask "swiftdialog" do
  version "3.1.1,5000"
  sha256 "58a77a5e963099c04e545c27f5b3abd8c2dbfdb6394101f31477a78242726c93"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v#{version.csv.first}/dialog-#{version.csv.first}-#{version.csv.second}.pkg"
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

  depends_on macos: :sequoia

  pkg "dialog-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil: "au.csiro.dialogcli"

  zap trash: [
    "/Library/Application Support/Dialog",
    "/Library/Preferences/au.csiro.dialog.plist",
  ]
end
