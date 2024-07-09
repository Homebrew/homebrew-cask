cask "classicftp" do
  version "4.03"
  sha256 :no_check

  url "https://www.nchsoftware.com/classic/classicmaci.zip"
  name "ClassicFTP"
  desc "FTP File Transfer Software"
  homepage "https://www.nchsoftware.com/classic/index.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ClassicFTP.app"

  zap trash: [
    "~/Library/Application Support/ClassicFTP",
    "~/Library/Preferences/com.nchsoftware.classicftp.plist",
  ]

  caveats do
    requires_rosetta
  end
end
