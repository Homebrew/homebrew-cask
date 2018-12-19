cask 'barsoom' do
  if MacOS.version <= :sierra
    version '2.5'
    sha256 'e13f37ab2b0c7bac03decce50bd27bba22593c794c7b94b9fab1133e110b139c'
    url 'https://www.seense.com/barsoom/updateapp/barsoom.zip'
  else
    version '3.0'
    sha256 '192a37e1f83316390db2f39652a69199671fc083fa80e6f42e03ecb8dfa12c39'
    url 'https://seense.com/barsoom/macosmojave/updateapp/barsoom_macosmojave.zip'
  end

  appcast 'https://www.seense.com/barsoom/mojave/updateapp/appcast.xml'
  name 'Barsoom'
  homepage 'https://www.seense.com/barsoom/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Barsoom.app'
end
