cask 'deathtodsstore' do
  version :latest
  sha256 :no_check

  url 'https://www.aorensoftware.com/Downloads/Files/DeathToDSStore.zip'
  name 'DeathToDSStore'
  homepage 'https://www.aorensoftware.com/blog/2011/12/24/death-to-ds_store/'

  app 'DeathToDSStore.app'
end
