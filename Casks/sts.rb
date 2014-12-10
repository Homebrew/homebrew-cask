cask :v1 => 'sts' do
  version '3.5.1'
  sha256 'f71274c9f946d2af6bbd12e811d7c8d371d3031415839b9aa6ed35347d2980f8'

  module Utils
    def self.based_on_eclipse
      '4.3.2'   # find eclipse version at http://spring.io/tools/sts/all
    end
  end

  url "http://download.springsource.com/release/STS/#{version}/dist/e#{Utils.based_on_eclipse.gsub(/\.\d$/, '')}/spring-tool-suite-#{version}.RELEASE-e#{Utils.based_on_eclipse}-macosx-cocoa-x86_64-installer.dmg"
  homepage 'http://spring.io/tools/sts'
  license :unknown    # todo: improve this machine-generated value

  installer :manual => "Installer - Spring Tool Suite #{version}.RELEASE.app"
end
