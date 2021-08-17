cask "quicken" do
  version "6.3.1,603.40939.100"
  sha256 "a23850b10926bf89db46537135f39ba143ca588057aa07921654cb81cd294fa7"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.after_comma}/Quicken-#{version.after_comma}.zip"
  name "Quicken"
  desc "Personal finance mananger"
  homepage "https://www.quicken.com/mac"

  livecheck do
    url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Quicken.app"

  zap trash: [
    "~/Library/Preferences/com.quicken.Quicken.plist",
    "~/Library/Application Support/Quicken",
  ]
end
