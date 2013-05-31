class MenuMeters < Cask
  url 'http://www.ragingmenace.com/software/download/MenuMeters.dmg'
  homepage 'http://www.ragingmenace.com/software/menumeters/'
  version 'latest'
  no_checksum
  link 'MenuMeters Installer.app'

  def caveats; <<-EOS.undent
    You need to run MenuMeters Installer.app to actually install MenuMeters
    EOS
  end
end
