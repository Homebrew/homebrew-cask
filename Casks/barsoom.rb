cask 'barsoom' do
  version :latest
  sha256 :no_check

  url 'https://www.seense.com/barsoom/macossierra/updateapp/barsoom_macossierra.zip'
  appcast 'https://www.seense.com/barsoom/macossierra/updateapp/appcast.xml',
          checkpoint: '33c47fedf5c9c5caf4a84bcdf006a261659cebb43256651d90ee689600e93f89'
  name 'Barsoom'
  homepage 'https://www.seense.com/barsoom/'

  auto_updates true

  app 'Barsoom.app'
end
