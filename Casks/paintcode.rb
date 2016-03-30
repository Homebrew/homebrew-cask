cask 'paintcode' do
  version '2.4.1'
  sha256 'd3669953482e92c5a7ae35907d0273e22b801496d85ba1cadf02a310cb3a236f'

  url "http://www.paintcodeapp.com/content/versions/#{version}/paintcode-trial.zip"
  name 'PaintCode'
  homepage 'http://www.paintcodeapp.com/'
  license :commercial

  app 'PaintCode.app'
end
