cask "bean" do
  version "3.7.3"
  sha256 "fa2bad7dc68bc240cd7a970fe2ed30bbd209f90215e197ba706fdc1a32c32b60"

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

  depends_on macos: ">= :high_sierra"

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"

  zap trash: [
    "~/Library/Preferences/com.bean-osx.Bean.plist",
    "~/Library/Saved Application State/com.bean-osx.Bean.savedState",
  ]
end
