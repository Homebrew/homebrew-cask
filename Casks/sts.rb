cask :v1 => 'sts' do
  version '3.7.1.RELEASE'
  sha256 'b98c8e8c677b9cdc6fb9debcbb2634c89f37a03d65ef468af73088306a17f683'

  module Utils
    def self.eclipse_version
      '4.5.1'   # find eclipse version at http://spring.io/tools/sts/all
    end

    def self.eclipse_version_major_minor
      eclipse_version.split('.').slice(0, 2).join('.')
    end
  end

  url "http://dist.springsource.com/release/STS/#{version}/dist/e#{Utils.eclipse_version_major_minor}/spring-tool-suite-#{version}-e#{Utils.eclipse_version}-macosx-cocoa-x86_64.tar.gz"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'
  license :eclipse

  app 'sts-bundle/STS.app'
end
