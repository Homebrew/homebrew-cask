cask 'midistroke' do
  version :latest
  sha256 :no_check

  url 'http://www.charlie-roberts.com/midiStroke/midiStroke.app.zip'
  name 'midiStroke'
  homepage 'http://www.charlie-roberts.com/midiStroke/'

  app 'midiStroke.app'

  zap trash: '~/Library/Application Support/midiStroke'
end
