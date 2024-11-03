cask "dcommander" do
  version "3.9.6.2"
  sha256 :no_check

  url "https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  desc "Two-pane file manager"
  homepage "https://devstorm-apps.com/dc/"

  livecheck do
    url "https://devstorm-apps.com/dc/download.php"
    regex(/DCommander[._-]v?(\d+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["content-disposition"]&.match(regex)
      next if match.blank?

      match[1].split("", 4).join(".")
    end
  end

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
