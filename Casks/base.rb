cask 'base' do
  version '2.4.11'
  sha256 '4c20edea4b4376fcd34aeecc6ea32488ba0f87a5521d37ae70146663e1bd189c'

  url "https://files.menial.co.uk/base/base_#{version}.zip"
  appcast 'https://update.menial.co.uk/software/base/',
          checkpoint: 'c26db591f386eef06cd36c107a9c35528f56ee506c4cf639db5a0f00ed38a23c'
  name 'Menial Base'
  homepage 'https://menial.co.uk/base/'

  app 'Base.app'
end
