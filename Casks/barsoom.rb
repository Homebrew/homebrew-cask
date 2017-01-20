cask 'barsoom' do
  version '2.5'
  sha256 'e13f37ab2b0c7bac03decce50bd27bba22593c794c7b94b9fab1133e110b139c'

  url 'https://www.seense.com/barsoom/macossierra/updateapp/barsoom_macossierra.zip'
  appcast 'https://www.seense.com/barsoom/macossierra/updateapp/appcast.xml',
          checkpoint: '33c47fedf5c9c5caf4a84bcdf006a261659cebb43256651d90ee689600e93f89'
  name 'Barsoom'
  homepage 'https://www.seense.com/barsoom/'

  auto_updates true

  app 'Barsoom.app'
end
