class CrosspackAvr < Cask
  url 'http://www.obdev.at/downloads/crosspack/CrossPack-AVR-20131216.dmg'
  homepage 'http://www.obdev.at/products/crosspack/'
  version 'CrossPack-AVR 20130-12-16'
  sha256 '959f9bf00429a0e46e649a14d7891cb4086c9cf2d032d9f66899d6efbb628f6e'
  install 'CrossPack-AVR.pkg'
  after_uninstall do
    IO.popen('yes | sudo -E /usr/local/CrossPack-AVR/uninstall && sudo pkgutil --forget at.obdev.CrossPack-AVR', 'r+') do |pipe|
      pipe.close_write
      while line = pipe.gets
        puts line
      end
    end
  end

  caveats do
    puts <<-EOS.undent
         CrossPack-AVR can normally install multiple versions side-by-side.
         Therefore, running install will typically install multiple versions
         of the tools in /usr/local/ (e.g. /usr/local/CrossPack-AVR-20131216).

         This cask will invoke the CrossPack-AVR uninstall script when it is
         uninstalled, removing the most recent version of the tools.
    EOS
    files_in_usr_local
  end
end
