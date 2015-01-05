cask :v1 => 'anki' do

  if MacOS.release <= :snow_leopard
    version '2.0.31.qt47'
    sha256 '43f3bd526b45ab2af2b0017dd33ba7725b3116ef4c6b3abc964eb974109d0c02'
  else
    version '2.0.31'
    sha256 '7afccba7d7998c187156702afb943e0be2b9d14729c8147b9a6fd20e40530fe2'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'http://ankisrs.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Anki.app'
end
