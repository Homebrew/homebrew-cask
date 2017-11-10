cask 'dollydrive' do
  version '3.98,39850'
  sha256 'c9c74636485ebd6c2f6377ae0ca3b60c50b2082b545d3a6309795c940fc1419d'

  url "http://dollydrive.com/download-center/dollydrive/DollyDrive_#{version.before_comma}_#{version.after_comma}_CERTIFIED.zip"
  appcast "http://www.dollydrive.com/dolly#{version.major}.xml",
          checkpoint: '306c616fa81dda21d26b26af52ff14bef91cea308a6585bcf23d9dec16d16922'
  name 'DollyDrive'
  homepage 'http://www.dollydrive.com/'

  app 'DollyDrive.app'
end
