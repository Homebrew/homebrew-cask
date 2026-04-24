cask "bean" do
  version "3.7.6"
  sha256 "192bd977ca289b1c4f28aed4c21b3047bec6dd04cc37b0308b8d6478e7eb8406"

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

  depends_on :macos

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"

  zap trash: [
    "~/Library/Preferences/com.bean-osx.Bean.plist",
    "~/Library/Saved Application State/com.bean-osx.Bean.savedState",
  ]
end
