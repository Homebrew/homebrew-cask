cask 'sts' do
  version '3.7.3.RELEASE'
  sha256 'c64a6308f1ae75ba9bddc6b298e02673207a9b1d8f6df2bf6d2f8532b47f29e7'

  module Utils
    def self.eclipse_version
      '4.5.2' # find eclipse version at http://spring.io/tools/sts/all
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
