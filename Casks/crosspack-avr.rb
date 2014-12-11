cask :v1 => 'crosspack-avr' do
  version '2013-12-16'
  sha256 '959f9bf00429a0e46e649a14d7891cb4086c9cf2d032d9f66899d6efbb628f6e'

  url "http://www.obdev.at/downloads/crosspack/CrossPack-AVR-#{version.gsub('-','')}.dmg"
  homepage 'http://www.obdev.at/products/crosspack/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'CrossPack-AVR.pkg'
  uninstall_postflight do
    IO.popen('/usr/bin/yes | /usr/bin/sudo -E -- /usr/local/CrossPack-AVR/uninstall && /usr/bin/sudo -- /usr/sbin/pkgutil --forget at.obdev.CrossPack-AVR', 'r+') do |pipe|
      pipe.close_write
      while line = pipe.gets
        puts line
      end
    end
  end

  caveats do
    files_in_usr_local
    <<-EOS.undent
      CrossPack-AVR can normally install multiple versions side-by-side.
      Therefore, running install will typically install multiple versions
      of the tools in /usr/local/ (e.g. /usr/local/CrossPack-AVR-20131216).

      This cask will invoke the CrossPack-AVR uninstall script when it is
      uninstalled, removing the most recent version of the tools.
    EOS
  end
end
