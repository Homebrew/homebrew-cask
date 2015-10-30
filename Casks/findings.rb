cask :v1 => 'findings' do
  version '1.2.4-2731'
  sha256 '6bec3882f65fcb9ae6d9d5f0960b0e28687311c4d6c2129ccfacc175a61d26a2'

  url "http://downloads.findingsapp.com/Findings_#{version.sub(%r{^.*-},'')}_#{version.sub(%r{-.*$},'')}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          :sha256 => 'b360595990d97f436194002c4b30c10459c1867b96b66cb122df48e6a67312fe'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on :macos => '>= :mavericks'

  app 'Findings.app'
end
