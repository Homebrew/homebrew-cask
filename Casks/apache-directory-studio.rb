cask "apache-directory-studio" do
  version "2.0.0.v20210213-M16"
  sha256 "aeb174447146c5a7b53158047f566ce63a93fbeef06e2efb4c9567930210bf2e"

  url "https://www.apache.org/dyn/closer.cgi?path=/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast "https://apache.mirror.serversaustralia.com.au/directory/studio/"
  name "Apache Directory Studio"
  homepage "https://directory.apache.org/studio/"

  app "ApacheDirectoryStudio.app"

  zap trash: "~/.ApacheDirectoryStudio"

  caveats do
    depends_on_java "8+"
  end
end
