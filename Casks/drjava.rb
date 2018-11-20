cask 'drjava' do
  version :latest
  sha256 :no_check

  url 'https://sourceforge.net/projects/drjava/files/latest/download'
  name 'DrJava'
  homepage 'http://www.drjava.org/'

  app 'drjava.jar'
end
