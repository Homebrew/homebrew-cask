cask "crushftp" do
  version "9"
  sha256 :no_check

  url "https://www.crushftp.com/CrushFTP#{version}_OSX.zip"
  name "CrushFTP"
  homepage "https://www.crushftp.com/"

  app "CrushFTP#{version}_OSX/CrushFTP#{version}.app"

  caveats do
    depends_on_java
  end
end
