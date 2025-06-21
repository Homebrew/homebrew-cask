cask "dcommander" do
  version "3.9.7.2"
  sha256 "bac6a148b174cc151fa1fde6bf7aa76ef855cf5412dbf067c295c174ae7232d2"

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
