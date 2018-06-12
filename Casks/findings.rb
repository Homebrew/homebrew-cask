cask 'findings' do
  version '2.0.4,5430'
  sha256 '9a41fb186bb2f204653d2bc20a9f7e12753bdeec6ffd9408f8b17a6e56b4316b'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'https://s3.amazonaws.com/downloads.findingsapp.com/appcastv2.xml'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Findings.app'
end
