cask '8tracksradiohelper' do
  version :latest
  sha256 :no_check

  url 'http://8tracks.nordlogic.com/downloads/8TracksRadioHelper.prefPane.zip'
  name '8tracks Radio Preferences Pane'
  homepage 'http://8tracks.nordlogic.com/'

  prefpane '8TracksRadioHelper.prefPane'
end
