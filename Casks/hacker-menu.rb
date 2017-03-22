cask 'hacker-menu' do
  version '1.1.5'
  sha256 'ab7de53e74b4514f46726f6dc3be467a1dd7f320990656b60cbb7ea4dd74bacf'

  # github.com/jingweno/hacker-menu was verified as official when first introduced to the cask
  url "https://github.com/jingweno/hacker-menu/releases/download/v#{version}/hacker-menu-mac.zip"
  appcast 'https://github.com/jingweno/hacker-menu/releases.atom',
          checkpoint: '3c8769b46ff0e92300472cb6ebcd7bf42a8ad434c4ca95980d4b063788d5e811'
  name 'Hacker Menu'
  homepage 'https://hackermenu.io/'

  app 'Hacker Menu.app'
end
