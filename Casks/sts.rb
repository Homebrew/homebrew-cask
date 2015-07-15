cask :v1 => 'sts' do
  version '3.7.0.RELEASE'
  sha256 'bb7bc748541e552e39095fa10990923c3c17df28b140ef9559a6bbf1f4ed262a'

  module Utils
    def self.eclipse_version
      '4.5'   # find eclipse version at http://spring.io/tools/sts/all
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
