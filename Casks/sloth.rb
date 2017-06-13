cask 'sloth' do
  version '1.9'
  sha256 '73cfaa5fade026916c83c90cb8a69230e74e69718b2d10924fba862b10b1f671'

  url 'http://sveinbjorn.org/files/software/sloth.zip'
  appcast 'http://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: '86890c2179e85e5101375e3d75fe6d390654fb6342cb3383038b5853a1b24a52'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'
end
