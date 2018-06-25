cask 'findings' do
  version '2.0.7,5445'
  sha256 '37a61a70c0e5682d85641b6e87aeaa2fdf52d7598cde309f3f53db8bf76e5274'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast "https://s3.amazonaws.com/downloads.findingsapp.com/appcastv#{version.major}.xml"
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Findings.app'
end
