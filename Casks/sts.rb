cask 'sts' do
  version '3.8.1.RELEASE'
  sha256 'e54ca0ea1c1348789629b32b0b2ab9bb9c181606449fdc5b023a36919d6df8e7'

  module Utils
    def self.eclipse_version
      '4.6' # find eclipse version at https://spring.io/tools/sts/all
    end

    def self.eclipse_version_major_minor
      eclipse_version.split('.').slice(0, 2).join('.')
    end
  end

  # springsource.com was verified as official when first introduced to the cask
  url "https://dist.springsource.com/release/STS/#{version}/dist/e#{Utils.eclipse_version_major_minor}/spring-tool-suite-#{version}-e#{Utils.eclipse_version}-macosx-cocoa-x86_64.tar.gz"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'
  license :eclipse

  app 'sts-bundle/STS.app'
end
