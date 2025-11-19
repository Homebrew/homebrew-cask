cask "sq-mixpad" do
  version "1.6.0,1.6,2025,02"
  sha256 "5e3e4d86c016ea1de457c78e89e0c5352e2a56e81fed2b32c3fb29c81d562243"

  url "https://www.allen-heath.com/content/uploads/#{version.csv.third}/#{version.csv.fourth}/SQ-MixPad-#{version.csv.second}-Mac-Installer.zip",
      user_agent: :browser
  name "SQ MixPad"
  desc "Remote control for Allen & Heath SQ audio consoles"
  homepage "https://www.allen-heath.com/hardware/sq/sq-mixpad/"

  disable! date: "2025-09-15", because: :unreachable

  app "SQ MixPad #{version.csv.first}.app"

  zap trash: "~/Library/Preferences/com.allen-heath.SQ-MixPad*.plist"

  caveats do
    requires_rosetta
  end
end
