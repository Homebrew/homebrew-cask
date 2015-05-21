cask :v1 => 'sts' do
  version '3.6.4'
  sha256 '9627e702f83efa19d25f6041bd86a58395ba1cc769c6e76b3f628d6c23900633'

  module Utils
    def self.based_on_eclipse
      '4.4.2'   # find eclipse version at http://spring.io/tools/sts/all
    end
  end

  url "http://dist.springsource.com/release/STS/#{version}.RELEASE/dist/e#{Utils.based_on_eclipse.gsub(/\.\d$/, '')}/spring-tool-suite-#{version}.RELEASE-e#{Utils.based_on_eclipse}-macosx-cocoa-x86_64.tar.gz"
  name 'Spring Tool Suite'
  homepage 'http://spring.io/tools/sts'
  license :eclipse

  app "sts-bundle/sts-#{version}.RELEASE/STS.app"
end
