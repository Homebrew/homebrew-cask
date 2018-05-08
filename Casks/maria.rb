cask 'maria' do
  version '1.2.6'
  sha256 '49fdca9fb362b96d9e51a5663edc4a7f2d2e27e3f9d14ffcaea60fdb2a155e06'

  url 'https://github.com/shincurry/Maria/releases/download/v1.2.6/Maria_v1.2.6_build1701213.dmg'
  appcast 'https://github.com/shincurry/Maria/releases.atom',
          checkpoint: '32e44d8013dd741e76d83d5bb45862aabafdebcd680377592aeb1f2d32c41eb1'
  name 'Maria'
  homepage 'https://github.com/shincurry/Maria'

  app 'Maria.app'
end
