cask "bdinfo" do
  version "1.0"
  sha256 :no_check

  url "https://www.videohelp.com/download/BDInfo%20OSX.dmg",
      referer: "https://www.videohelp.com/software/BDInfo"
  name "BDInfo"
  desc "Collect video and audio technical specifications from Blu-ray discs"
  homepage "https://www.videohelp.com/software/BDInfo"

  livecheck do
    url :homepage
    regex(/BDInfo\s+(\d+(?:\.\d+)+)\s+Mac/i)
  end

  app "BDInfo OSX.app"

  zap trash: [
    "~/Library/Preferences/com.yourcompany.BDInfo-OSX.plist",
    "~/Library/Saved Application State/com.yourcompany.BDInfo-OSX.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
