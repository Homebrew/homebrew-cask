cask 'dupin' do
  if MacOS.version <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.12.3'
    sha256 'b50e2a0bccb5ce42f612c3d2f8aac932206b0882903579c078ce841ce0fe4056'

    appcast 'https://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
            checkpoint: '868b8eeedfbded97a26abcb664940c9f7ef2bc0790653a72462f2aec7465a59b'
  end

  url "https://dougscripts.com/itunes/scrx/dupinv#{version.no_dots}.zip"
  name 'Dupin'
  homepage 'https://dougscripts.com/apps/dupinapp.php'

  app 'Dupin.app'
end
