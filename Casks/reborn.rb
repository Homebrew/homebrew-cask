cask 'reborn' do
  version '0.5.49'
  sha256 '74441db98aa0c7bcce6a5ac94233ff8c7582bc7f4ea88571fdaf24d776a7ba82'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
