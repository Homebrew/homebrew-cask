cask 'dbeaver-enterprise' do
  version '3.8.2'
  sha256 '0dcd609672e884874e6397652060697e29d7cf7b84030aadcac1dc0d812862ca'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: 'd12e3485499f7bc09a44a51424b0f51f844b58c94837d0a811fd15876b545af2'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
