cask 'archipelago' do
  version '3.4.2'
  sha256 '87e024a422e4dbf3fb5a4ef6087615446370396d87a9efbbb5b4f8280ffa8589'

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  appcast 'https://github.com/npezza93/archipelago/releases.atom'
  name 'Archipelago'
  homepage 'https://github.com/npezza93/archipelago'

  app 'Archipelago.app'
end
