cask 'inpad' do
  version '0.1.0'
  sha256 'a66a0be66bc98d31f36232ab9b5ea5a47fdb644e4234673d8ccc26bd637841f1'

  # github.com/Sarah-Seo/Inpad was verified as official when first introduced to the cask
  url "https://github.com/Sarah-Seo/Inpad/releases/download/v#{version}/Inpad-#{version}.dmg"
  name 'Inpad'
  homepage 'https://sarah-seo.github.io/Inpad/'
  license :unknown

  app 'Inpad.app'
end
