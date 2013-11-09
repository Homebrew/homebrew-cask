class Menumeters < Cask
  url 'http://www.ragingmenace.com/software/download/MenuMeters.dmg'
  homepage 'http://www.ragingmenace.com/software/menumeters/'
  version 'latest'
  no_checksum
  link 'MenuMeters Installer.app'

  def caveats; <<-EOS.undent
    You need to run #{destination_path/'MenuMeters Installer.app'} to actually install MenuMeters
    EOS
  end
end
