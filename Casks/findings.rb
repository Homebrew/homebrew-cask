cask 'findings' do
  version '2.0.3,5423'
  sha256 'eafb235e8fbcc071bc3d09e824d8ed3964b28fbe6ca6254bde7c91b9b1f7a971'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '88b9b5a9fb9d8c50fdb668f279d7aff1d00b1caf30b9585894c6b6e497cb10f2'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Findings.app'
end
