class Cdock < Cask
  version '4.2'
  sha256 '586f1a8972e12b4d71439ef915eca1396d915e28efbcee66ce84bee921aeb0ad'

  url 'https://downloads.sourceforge.net/project/cdock/cDock/cDock_v4.2.zip'
  homepage 'http://sourceforge.net/projects/cdock'

  link 'cDock.app'
  caveats do
    puts <<-EOS.undent
    Currently the cask '#{@cask}' depends on the cask easysimbl so
    in order to use '#{@cask}' do 'brew cask install easysimbl'
    EOS
  end
end
