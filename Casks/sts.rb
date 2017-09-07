cask 'sts' do
  version '3.9.0.RELEASE'
  sha256 'fe36856fde5f76299814c02d2106c4d1cea1bd934bf61339934089cd7d64d24b'

  module Utils
    def self.eclipse_version
      '4.7.0' # find eclipse version at https://spring.io/tools/sts/all
    end

    def self.eclipse_version_major_minor
      eclipse_version.split('.').slice(0, 2).join('.')
    end
  end

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version}/dist/e#{Utils.eclipse_version_major_minor}/spring-tool-suite-#{version}-e#{Utils.eclipse_version}-macosx-cocoa-x86_64.tar.gz"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'sts-bundle/STS.app'
end
