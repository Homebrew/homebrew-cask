cask 'notable' do
  version '1.8.1'
  sha256 '406a72e4ac9a235c36cafc4724b75e36c91de0c4570d560b088504d28207468d'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
