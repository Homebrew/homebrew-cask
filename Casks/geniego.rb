cask :v1 => 'geniego' do
  version :latest
  sha256 :no_check

  url 'http://directv.vo.llnwd.net/e4/nomad/MACOS-client.dmg'
  name 'DIRECTV GenieGO'
  name 'GenieGO'
  name 'Nomad'
  homepage 'http://www.directv.com/technology/geniego'
  license :closed

  app 'Nomad.app', :target => 'GenieGO.app'
  #This app is renamed because although the filename is Nomas (a reference to the old version of the marketing),
  #If a user were to actually try to install it manually, it shows up in the GUI as 'GenieGO.app', indicating the
  #intent of the producer for the actual name visible to the user.  Example screenshot here:
  # http://i.imgur.com/mfgZke7.png
end
