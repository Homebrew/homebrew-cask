cask 'jdk-mission-control' do
  version '7.0.1,01'
  sha256 'f335ba9d74ad0fc8e4303895026834ff9b87a77d9f404d7ac3cd6687f34e4c7b'

  url "https://download.java.net/java/GA/jmc#{version.before_comma}/#{version.after_comma}/UPL/jmc-#{version.before_comma}+#{version.after_comma}_osx-x64_bin.tar.gz"
  appcast 'https://jdk.java.net/jmc/',
          configuration: version.after_comma
  name 'JDK Mission Control'
  homepage 'https://jdk.java.net/jmc/'

  app "jmc-#{version.before_comma}+#{version.after_comma}_osx-x64_bin/JDK Mission Control.app"

  caveats do
    depends_on_java '11'
  end
end
