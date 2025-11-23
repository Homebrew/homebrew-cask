cask "dcommander" do
  version "3.9.9.2"
  sha256 "e54cc1b5493bfee040cc74065c2b0948641526a5f46725170c2aa640a6099b00"

  url "https://devstorm-apps.com/apps/DCommander-#{version.no_dots}.dmg"
  name "DCommander"
  desc "Two-pane file manager"
  homepage "https://devstorm-apps.com/dcommander/"

  livecheck do
    url "https://devstorm-apps.com/dc/download.php"
    regex(/DCommander[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["content-disposition"]&.match(regex)
      next if match.blank?

      (version = match[1]).include?(".") ? version : version.chars.join(".")
    end
  end

  depends_on macos: ">= :big_sur"

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
