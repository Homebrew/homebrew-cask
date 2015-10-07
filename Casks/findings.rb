cask :v1 => 'findings' do
  version '1.2.3'
  sha256 'f654eba4d4006f0f71399191ca94fa77408ece2ce9eeffad92632255bf2739cd'

  url "http://downloads.findingsapp.com/Findings_2725_#{version}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          :sha256 => 'b360595990d97f436194002c4b30c10459c1867b96b66cb122df48e6a67312fe'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on :macos => '>= :mavericks'

  app 'Findings.app'
end
