cask "rosaimagewriter" do
  version "2.6.2"
  sha256 "47e582adfee4b55c360291ed85fa21b3062285f549a80c54a63cc6c3b636537c"

  url "http://wiki.rosalab.ru/en/images/3/33/RosaImageWriter-#{version}-osx.dmg"
  name "ROSA ImageWriter"
  homepage "http://wiki.rosalab.ru/en/index.php/ROSA_ImageWriter"

  livecheck do
    url :homepage
    regex(%r{href=.*?/RosaImageWriter-(\d+(?:\.\d+)*)-osx\.dmg}i)
  end

  app "RosaImageWriter.app"
end
