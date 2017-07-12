cask 'pyfa' do
  version '1.30.0,yc119.7-1.0'
  sha256 '2fecdb7792de43158e5d3662547ae6fbf2d9c9c1f2816a0016b15434657501c0'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'a41c2fdb1aec564129fa98d3c0242eb529959411081fbaad05e20e16522fe64c'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
