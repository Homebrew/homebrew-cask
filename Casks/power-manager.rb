cask 'power-manager' do
  version '5.0.2'
  sha256 '7871f56e692372ce31ad993695e5734f4d1d763fd7ff6dbaf5ac442d81660b97'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true

  app 'Power Manager.app'
end
