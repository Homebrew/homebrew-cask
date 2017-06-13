cask 'sts' do
  version '3.8.4.RELEASE'
  sha256 'c8576b2b7054f86d55154fb16dede9d4f385e57c348dc7dfdf7c6bed3198ac3a'

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

  app 'sts-bundle/STS.app'
end
