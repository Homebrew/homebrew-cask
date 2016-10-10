cask 'power-manager' do
  version '4.5.4'
  sha256 '358428c72c1f1f9185656986e6674adc3edc51fc9e47d0cef9ff7bf7f4954fa8'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: 'bb2e3dca69a563292b36fbaa8aee38697085430e88cc3cc7fc75a6e56df89c8c'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
