class DwarfFortressMacnewbie < Cask
  version '0.9.3'
  sha256 '13b28647228ae977c78d302bafeb42cb6e0b62e3b3efe149f7504ad07a11e998'

  url 'http://dffd.wimbli.com/download.php?id=7922&f=Macnewbie_0.9.3.dmg'
  homepage 'http://www.bay12forums.com/smf/index.php?topic=128960'

  link 'Macnewbie'
  caveats do
    puts <<-EOS.undent
      The cask '#{@cask}' depends on the casks java and xquartz so
      in order to use '#{@cask}' do 'brew cask install java xquartz'
    EOS
  end
end
