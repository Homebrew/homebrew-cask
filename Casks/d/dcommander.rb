cask "dcommander" do
  version "3.9.7.2"
  sha256 :no_check

  url "https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  desc "Two-pane file manager"
  homepage "https://devstorm-apps.com/dcommander/"

  livecheck do
    url :url
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
