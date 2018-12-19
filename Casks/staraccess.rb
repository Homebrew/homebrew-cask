cask 'staraccess' do
  version :latest
  sha256 :no_check

  url 'https://my.ukrsibbank.com/common/upload/StarAccess/SA_Launcher_macOs.zip'
  name 'Star Access'
  homepage 'https://my.ukrsibbank.com/'

  app 'StarAccess.app'

  zap trash: '~/.iBank2'

  caveats do
    depends_on_java '6+'
  end
end
