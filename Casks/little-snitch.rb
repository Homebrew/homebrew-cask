class LittleSnitch < Cask
  url 'http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-3.3.dmg'
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  version '3.3'
  sha1 'ed3c1a11dad0efedb959bf5935f23d722eb488f8'

  def caveats; <<-EOS.undent
    You need to run #{destination_path/'Little Snitch Installer.app'} to actually install Little Snitch
    EOS
  end
end
