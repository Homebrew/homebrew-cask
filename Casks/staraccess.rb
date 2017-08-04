cask 'staraccess' do
  version :latest
  sha256 :no_check

  url 'https://my.ukrsibbank.com/common/upload/StarAccess/SA_Launcher_macOs.zip'
  name 'Star Access'
  homepage 'https://my.ukrsibbank.com/en/personal/'

  depends_on cask: 'java'

  app 'StarAccess.app'

  zap trash: '~/.iBank2'
end
