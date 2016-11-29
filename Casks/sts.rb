cask 'sts' do
  version '3.8.2.RELEASE'
  sha256 '8857035e065b9a8f8a26beaeda863f9315fe4afa4f9d17b5cbea5607c9450439'

  module Utils
    def self.eclipse_version
      '4.6.1' # find eclipse version at https://spring.io/tools/sts/all
    end

    def self.eclipse_version_major_minor
      eclipse_version.split('.').slice(0, 2).join('.')
    end
  end

  # springsource.com was verified as official when first introduced to the cask
  url "https://dist.springsource.com/release/STS/#{version}/dist/e#{Utils.eclipse_version_major_minor}/spring-tool-suite-#{version}-e#{Utils.eclipse_version}-macosx-cocoa-x86_64.tar.gz"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  app 'sts-bundle/STS.app'
end
