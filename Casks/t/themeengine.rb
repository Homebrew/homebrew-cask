cask "themeengine" do
  version "1.0.0,111"
  sha256 "2f7039bf8a30a20da20b292252759a501d15962f909d3b2274db9c2ec7a3bf39"

  url "https://github.com/alexzielenski/ThemeEngine/releases/download/#{version.csv.first}(#{version.csv.second})/ThemeEngine_111.zip"
  name "ThemeEngine"
  desc "App to edit compiled .car files"
  homepage "https://github.com/alexzielenski/ThemeEngine/"

  deprecate! date: "2024-10-31", because: :unmaintained
  disable! date: "2025-11-01", because: :unmaintained

  app "ThemeEngine.app"

  zap trash: "~/Library/Preferences/com.alexzielenski.ThemeEngine.LSSharedFileList.plist"

  caveats do
    requires_rosetta
  end
end
