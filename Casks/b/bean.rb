cask "bean" do
  version "3.7.4"
  sha256 "1ac18506804f2c8e4abcfd3bff7ef4e2dd24f1244ea7645faf4254a5a506a64b"

  url "https://www.bean-osx.com/releases/Bean-Install-#{version.dots_to_hyphens}.zip"
  name "Bean"
  desc "Word processor"
  homepage "https://www.bean-osx.com/Bean.html"

  livecheck do
    url "https://www.bean-osx.com/releases/availableVersion.xml"
    strategy :xml do |xml|
      xml.elements["//availableVersion"]&.text&.strip
    end
  end

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"

  zap trash: [
    "~/Library/Preferences/com.bean-osx.Bean.plist",
    "~/Library/Saved Application State/com.bean-osx.Bean.savedState",
  ]
end
