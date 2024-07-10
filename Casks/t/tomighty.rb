cask "tomighty" do
  version "1.2"
  sha256 "0ebee4c2c913a75b15fed071d68c22c866a3d8436ad359eb2ee66e27d39b2214"

  url "https://github.com/tomighty/tomighty-osx/releases/download/#{version}/Tomighty-#{version}.dmg"
  name "Tomighty"
  desc "Pomodoro desktop timer"
  homepage "https://github.com/tomighty/tomighty-osx"

  app "Tomighty.app"

  zap trash: "~/Library/Preferences/org.tomighty.Tomighty.plist"

  caveats do
    requires_rosetta
  end
end
