cask '8tracksradiohelper' do
  version :latest
  sha256 :no_check

  url 'http://8tracksformac.com/downloads/8TracksRadioHelper.prefPane.zip'
  name '8tracks Radio Preferences Pane'
  homepage 'http://8tracksformac.com/'
  license :gratis

  prefpane '8TracksRadioHelper.prefPane'
end
