cask 'liteide' do
  version '33.2'
  sha256 '2b773c078f46d880d6f8f3980ff153c47790068e647d9a9f9fecb0ad7628c67f'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'dcc2fc7a31e3f829790c067b09ab80ccbe27ddbc96625091cdd619a5fe0f7e45'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'LiteIDE.app'
end
