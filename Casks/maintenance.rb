cask 'maintenance' do
  version :latest
  sha256 :no_check

  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version <= :yosemite
    url "http://www.titanium.free.fr/download/#{macos_release}/Maintenance.dmg"
  else
    # joel.barriere.pagesperso-orange.fr was verified as official when first introduced to the cask
    url "http://joel.barriere.pagesperso-orange.fr/download/#{macos_release}/Maintenance.dmg"
  end

  name 'Maintenance'
  homepage 'http://www.titanium.free.fr/maintenance.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :tiger,
                      :leopard,
                      :snow_leopard,
                      :lion,
                      :mountain_lion,
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                    ]

  app 'Maintenance.app'
end
