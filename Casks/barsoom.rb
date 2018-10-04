cask 'barsoom' do
  version '2.5'
  sha256 'e13f37ab2b0c7bac03decce50bd27bba22593c794c7b94b9fab1133e110b139c'

  url 'https://www.seense.com/barsoom/macossierra/updateapp/barsoom_macossierra.zip'
  appcast 'https://www.seense.com/barsoom/macossierra/updateapp/appcast.xml'
  name 'Barsoom'
  homepage 'https://www.seense.com/barsoom/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Barsoom.app'
end
