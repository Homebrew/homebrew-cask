cask :v1 => '8tracksradiohelper' do
  version :latest
  sha256 :no_check

  url 'http://8tracksformac.com/downloads/8TracksRadioHelper.prefPane.zip'
  name '8Tracks Radio Helper'
  name '8tracks'
  homepage 'http://8tracksformac.com/'
  license :unknown

  prefpane '8TracksRadioHelper.prefPane'
end
