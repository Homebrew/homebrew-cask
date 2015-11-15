cask :v1 => 'findings' do
  version '1.3-3009'
  sha256 '9abc844ce945c99d3c718c7ebd67caf80f341f87692e332c9d64330207885b51'

  url "http://downloads.findingsapp.com/Findings_#{version.sub(%r{^.*-},'')}_#{version.sub(%r{-.*$},'')}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          :sha256 => 'b360595990d97f436194002c4b30c10459c1867b96b66cb122df48e6a67312fe'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on :macos => '>= :mavericks'

  app 'Findings.app'
end
