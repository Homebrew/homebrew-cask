cask 'instasizer' do
  version :latest
  sha256 :no_check

  url 'http://www.tapgods.com/instasizer/Instasizer.zip'
  name 'Instasizer'
  homepage 'http://www.tapgods.com/instasizer/'

  depends_on macos: '>= :lion'

  app 'Instasizer.app'
end
