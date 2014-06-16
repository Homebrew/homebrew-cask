class Sts < Cask
  url 'http://download.springsource.com/release/STS/3.5.1/dist/e4.3/spring-tool-suite-3.5.1.RELEASE-e4.3.2-macosx-cocoa-x86_64-installer.dmg'
  homepage 'http://spring.io/tools/sts'
  version '3.5.1'
  sha256 'f71274c9f946d2af6bbd12e811d7c8d371d3031415839b9aa6ed35347d2980f8'
  caskroom_only true
  caveats do
    manual_installer 'Installer - Spring Tool Suite 3.5.1.RELEASE.app'
  end
end
