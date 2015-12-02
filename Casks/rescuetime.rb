cask :v1 => 'rescuetime' do
  version :latest
  sha256 :no_check

  url 'https://www.rescuetime.com/installers/RescueTimeInstaller.dmg'
  name 'RescueTime'
  homepage 'https://www.rescuetime.com'
  license :gratis

  app 'RescueTime.app'
end
