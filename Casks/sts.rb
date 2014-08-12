class Sts < Cask
  version '3.5.1'
  sha256 'f71274c9f946d2af6bbd12e811d7c8d371d3031415839b9aa6ed35347d2980f8'
  # find eclise version at http://spring.io/tools/sts/all
  based_on_eclipse = '4.3.2'

  url "http://download.springsource.com/release/STS/#{version}/dist/e#{based_on_eclipse.gsub(/\.\d$/, '')}/spring-tool-suite-#{version}.RELEASE-e#{based_on_eclipse}-macosx-cocoa-x86_64-installer.dmg"
  homepage 'http://spring.io/tools/sts'

  caskroom_only true
  caveats do
    manual_installer "Installer - Spring Tool Suite #{@cask.version}.RELEASE.app"
  end
end
