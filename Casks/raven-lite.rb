cask 'raven-lite' do
  version '2.0.0.0022'
  sha256 '84c8d97df6119605ff645c93d896d472a814246fb87128611225168459423532'

  url "http://www.birds.cornell.edu/brp/RavenLite/RavenLiteFullInstaller/InstData/MacOSX/RavenLite-#{version}_macosx.dmg"
  name 'Raven Lite'
  homepage 'http://www.birds.cornell.edu/brp/raven/RavenOverview.html'

  depends_on macos: '>= :mountain_lion'

  installer manual: 'RavenLite-Installer.app'

  uninstall delete: "/Applications/Raven Lite #{version.major_minor}"

  caveats do
    depends_on_java('8+')
  end
end
