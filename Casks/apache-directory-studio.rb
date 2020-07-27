cask "apache-directory-studio" do
  version "2.0.0.v20200411-M15"
  sha256 "1e3208fcdf42ae107796a06a00240c08b9f0c24c8b07a61e94b968112657fda8"

  url "https://www.apache.org/dyn/closer.cgi?path=/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast "http://apache.mirror.serversaustralia.com.au/directory/studio/"
  name "Apache Directory Studio"
  homepage "https://directory.apache.org/studio/"

  app "ApacheDirectoryStudio.app"

  zap trash: "~/.ApacheDirectoryStudio"

  caveats do
    depends_on_java "8+"
  end
end
