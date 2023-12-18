cask "logisim" do
  version "2.7.1"
  sha256 "41c5555b8021794e268a3fc2c9c51301d919680ae780b000b99380fc492bae7c"

  url "https://downloads.sourceforge.net/circuit/#{version.sub(/\d+$/, "x")}/#{version}/logisim-macosx-#{version}.tar.gz",
      verified: "sourceforge.net/circuit/"
  name "Logisim"
  desc "Tool for designing and simulating digital logic circuits"
  homepage "http://www.cburch.com/logisim/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Logisim.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end
