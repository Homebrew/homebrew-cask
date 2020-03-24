cask 'endless-sky' do
  version '0.9.11'
  sha256 'c7f34a7a99ac70184914c8c43b4e8f3ac42c870d69fb680ca8d5e3dd14409ba3'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'

  app 'Endless Sky.app'
end
