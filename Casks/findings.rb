cask 'findings' do
  version '1.3.1-3058'
  sha256 'db31b3d88964d8d350b2e2363df44757793addb6d33b860be5eeb78fddf5d82a'

  url "http://downloads.findingsapp.com/Findings_#{version.sub(%r{^.*-}, '')}_#{version.sub(%r{-.*$}, '')}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          :checkpoint => '0f43983b0ab7cb4064e4ad12e0c41975b8a5b57a875170714f621167858f831a'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on :macos => '>= :mavericks'

  app 'Findings.app'
end
