cask 'notable' do
  version '1.7.2'
  sha256 'ff5c29c8932fc76193f2fb43b7410edb60b37a65fe6ea35c07980d314eac7cc6'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
