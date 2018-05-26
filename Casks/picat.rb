cask 'picat' do
  version '2.4'
  sha256 '6b9233145122984873511416bc69bea952ee74ba274e1fe1d0ec946c453f8f9f'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: '24bf287a0490eeb31628d8d6ead3749faacb515c1d260d59cdf87e12afa23c9d'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
