cask "jslegendre-themeengine" do
  version "1.0.0,119"
  sha256 "d4330aeeaa354ecd9eb13c02661836262f97a28dedc3d8820f99714995eaaf77"

  url "https://github.com/jslegendre/ThemeEngine/releases/download/v#{version.csv.first}(#{version.csv.second})/ThemeEngine.zip"
  name "ThemeEngine"
  desc "App to edit compiled .car files"
  homepage "https://github.com/jslegendre/ThemeEngine/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)(?:\((\d+)\))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[2] ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "ThemeEngine.app"

  zap trash: "~/Library/Preferences/com.alexzielenski.ThemeEngine.plist"
end
