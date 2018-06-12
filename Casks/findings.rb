cask 'findings' do
  version '2.0.3,5423'
  sha256 'eafb235e8fbcc071bc3d09e824d8ed3964b28fbe6ca6254bde7c91b9b1f7a971'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Findings.app'
end
