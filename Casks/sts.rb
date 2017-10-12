cask 'sts' do
  version '3.9.1.RELEASE'
  sha256 '17bdeecd0b485b02475a2b32f06d61b23450fca14d45acc18a557fc707fb657b'

  module Utils
    def self.eclipse_version
      '4.7.1a' # find eclipse version at https://spring.io/tools/sts/all
    end

    def self.eclipse_version_major_minor
      eclipse_version.split('.').slice(0, 2).join('.')
    end
  end

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version}/dist/e#{Utils.eclipse_version_major_minor}/spring-tool-suite-#{version}-e#{Utils.eclipse_version}-macosx-cocoa-x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'STS.app'
end
