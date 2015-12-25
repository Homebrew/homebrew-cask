cask 'smaller' do
  version :latest
  sha256 :no_check

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://smallerapp.com/up/updates.xml',
          :sha256 => 'e2ab08e7db22d35dc6e89843a309050660fbcfcc17f173aff94e46d4a4e1dd7d'
  name 'Smaller'
  homepage 'http://smallerapp.com/'
  license :commercial

  app 'Smaller.app'
end
