cask 'freeze' do
  version '2.0'
  sha256 'a64aa70671daf02816b537ed5ebd3b02e00efec9bba2b25b4eb209217e1372fb'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: 'a3f4b527e5af6a1922640f344ca63897caf31b278e879624a75e5563a2895e12'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
