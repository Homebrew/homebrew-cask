cask 'sts' do
  version '3.8.3.RELEASE'
  sha256 '74ec8913bd247eab095f38d7a9629d2b8557ded11a8f36179c713a4515ae25ac'

  module Utils
    def self.eclipse_version
      '4.6.2' # find eclipse version at https://spring.io/tools/sts/all
    end

    def self.eclipse_version_major_minor
      eclipse_version.split('.').slice(0, 2).join('.')
    end
  end

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version}/dist/e#{Utils.eclipse_version_major_minor}/spring-tool-suite-#{version}-e#{Utils.eclipse_version}-macosx-cocoa-x86_64.tar.gz"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  app 'sts-bundle/STS.app'
end
