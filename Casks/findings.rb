cask 'findings' do
  version '2.1,5648'
  sha256 '07e1372c4b7fb1b719efd1c6c332a45dc0e45ddfcef136f801e7d00c4b08e65d'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast "https://s3.amazonaws.com/downloads.findingsapp.com/appcastv#{version.major}.xml"
  name 'Findings'
  homepage 'https://findingsapp.com/'

  depends_on macos: '>= :sierra'

  app 'Findings.app'
end
