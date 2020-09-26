cask "classicftp" do
  version :latest
  sha256 :no_check

  url "https://www.nchsoftware.com/classic/classicmaci.zip"
  name "ClassicFTP"
  desc "FTP File Transfer Software"
  homepage "https://www.nchsoftware.com/classic/index.html"

  app "ClassicFTP.app"

  zap trash: [
    "~/Library/Application Support/ClassicFTP",
    "~/Library/Preferences/com.nchsoftware.classicftp.plist",
  ]
end
