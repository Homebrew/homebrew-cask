cask :v1 => 'rescuetime' do
  version :latest
  sha256 :no_check

  url 'https://www.rescuetime.com/installers/RescueTimeInstaller.dmg'
  homepage 'https://www.rescuetime.com'
  license :unknown    # todo: improve this machine-generated value

  app 'RescueTime.app'
end
