cask "themeengine" do
  version "1.0.0,111"
  sha256 "2f7039bf8a30a20da20b292252759a501d15962f909d3b2274db9c2ec7a3bf39"

  url "https://github.com/alexzielenski/ThemeEngine/releases/download/#{version.csv.first}(#{version.csv.second})/ThemeEngine_111.zip"
  name "ThemeEngine"
  desc "App to edit compiled .car files"
  homepage "https://github.com/alexzielenski/ThemeEngine/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.filter_map do |tag|
        match = tag.match(/^(\d+(?:\.\d+)*)\((\d+)\)$/i)
        "#{match[1]},#{match[2]}" if match
      end
    end
  end

  app "ThemeEngine.app"

  zap trash: "~/Library/Preferences/com.alexzielenski.ThemeEngine.LSSharedFileList.plist"
end
