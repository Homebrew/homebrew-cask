cask 'raven-lite' do
  version '2.0.0.0036'
  sha256 'ddc3100ed48449e76b8c022e6da4661fea94b1fb372546030d64ff847a7924ea'

  url "http://www.birds.cornell.edu/brp/RavenLite/RavenLiteFullInstaller_64Bit/InstData/MacOSX/RavenLite-#{version}_macosx.dmg"
  name 'Raven Lite'
  homepage 'http://www.birds.cornell.edu/brp/raven/RavenOverview.html'

  depends_on macos: '>= :mountain_lion'

  installer manual: 'RavenLite-Installer.app'

  uninstall delete: "/Applications/Raven Lite #{version.major_minor}"

  caveats do
    depends_on_java '8+'
  end
end
