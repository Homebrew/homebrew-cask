cask :v1 => 'findings' do
  version :latest
  sha256 :no_check

  url 'http://downloads.findingsapp.com/findings'
  appcast 'http://downloads.findingsapp.com/appcast.xml'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :commercial

  app 'Findings.app'
end
