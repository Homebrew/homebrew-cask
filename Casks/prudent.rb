cask 'prudent' do
  version '55.0.2883.87,initial'
  sha256 '128c50e2c4e00c71e35212f23b74b93d6256d219d05ffed55079369310950d8f'

  # github.com/PrudentMe/main was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.after_comma}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom'
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
