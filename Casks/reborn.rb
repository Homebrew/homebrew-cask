cask 'reborn' do
  version '0.5.3'
  sha256 'f86fa79fef9ba686e802690b6fa935779fb73e683d5e462553be608b177b6b1c'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
