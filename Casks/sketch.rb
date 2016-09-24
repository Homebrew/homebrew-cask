cask 'sketch' do
  version latest
  sha256 no_check
  
  url "https://sketchapp.com/static/download/sketch.zip"
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'
  license :commercial

  app 'Sketch.app'
end
