cask :v1 => 'findings' do
  version '1.2.3'
  sha256 'f654eba4d4006f0f71399191ca94fa77408ece2ce9eeffad92632255bf2739cd'

  url "http://downloads.findingsapp.com/Findings_2725_#{version}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          :sha256 => '51dae6921888aedc49e50375212746d9b92ebde1e653712c138af47eb5b8ab49'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on :macos => '>= :mavericks'

  app 'Findings.app'
end
