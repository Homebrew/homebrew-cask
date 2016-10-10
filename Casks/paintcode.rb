cask 'paintcode' do
  version '2.4.2'
  sha256 '8e052831ba1ea257f265ac7248d560f4872bb71fcaccb214f048c8907c319381'

  url "https://www.paintcodeapp.com/content/versions/#{version}/paintcode-trial.zip"
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
