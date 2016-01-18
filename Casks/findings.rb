cask 'findings' do
  version '1.3.1-3058'
  sha256 'db31b3d88964d8d350b2e2363df44757793addb6d33b860be5eeb78fddf5d82a'

  url "http://downloads.findingsapp.com/Findings_#{version.sub(%r{^.*-}, '')}_#{version.sub(%r{-.*$}, '')}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: 'e982841610ccdca5e92ad1f80355339b0bae079a05533fcc3f436a3685ad0b48'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
