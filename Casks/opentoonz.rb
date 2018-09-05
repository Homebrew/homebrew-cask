cask 'opentoonz' do
  version '1.2.1'
  sha256 'af738c53f4d31d0f524348ac93d82ef8f80508a4908ad2fac98b7d3e473032b5'

  # github.com/opentoonz/opentoonz was verified as official when first introduced to the cask
  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg"
  appcast 'https://github.com/opentoonz/opentoonz/releases.atom'
  name 'OpenToonz'
  homepage 'https://opentoonz.github.io/e/index.html'

  pkg 'OpenToonz.pkg'

  uninstall pkgutil: 'io.github.opentoonz'
end
