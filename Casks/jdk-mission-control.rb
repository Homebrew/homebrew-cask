cask 'jdk-mission-control' do
  version '7.0.0,14'
  sha256 '81a7754c75be718cee852f988cc64d5cb1f2aa90a3a4bbe0f8fdc70d9c719ab3'

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.after_comma}/jmc-#{version.major}_osx-x64_bin.tar.gz"
  appcast 'https://jdk.java.net/jmc/',
          configuration: version.after_comma
  name 'JDK Mission Control'
  homepage 'https://jdk.java.net/jmc/'

  app "jmc-#{version.major}+#{version.after_comma}_osx-x64_bin/JDK Mission Control.app"

  caveats do
    depends_on_java '11'
  end
end
