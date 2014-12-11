cask :v1 => 'rekordbox' do
  version '3.0.3'
  sha256 '65e165e0c385142be825806c85e330d4636bab17e1a8a5c1f9bd5784d9ef721b'

  url "http://rekordbox.com/_app/files/Install_rekordbox_#{version.gsub('.','_')}.pkg.zip"
  homepage 'http://rekordbox.com/en/'
  license :unknown    # todo: improve this machine-generated value

  pkg "Install_rekordbox_#{version.gsub('.','_')}.pkg"

  uninstall :pkgutil => 'com.pioneer.rekordbox.*',
            :delete  => '/Applications/rekordbox 3/'
end
