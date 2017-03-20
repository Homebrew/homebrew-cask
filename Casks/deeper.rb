cask 'deeper' do
  version :latest
  sha256 :no_check

  macos_release = MacOS.version.to_s.delete('.')

  url "https://www.titanium-software.fr/download/#{macos_release}/Deeper.dmg"
  name 'Deeper'
  homepage 'http://www.titanium-software.fr/en/deeper.html'

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

  app 'Deeper.app'
end
