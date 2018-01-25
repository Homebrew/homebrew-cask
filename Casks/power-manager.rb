cask 'power-manager' do
  version '4.6.3'
  sha256 '6590cc40217f3e9e6ff54b059be8bf322a0212b20bb59e78c69d99fff8e69599'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: 'f3135e5f95822e7aaae720f080ef2d998ad3761d9cce5053896d1d0fdb06dd03'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager.app'
end
