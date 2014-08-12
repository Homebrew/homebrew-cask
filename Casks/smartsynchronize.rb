class Smartsynchronize < Cask
  version '3.3.4'
  sha256 'dc3732ef768d06a610742b0e1cf562c3cfce973e378b4c2dead6bf6cff9966f8'

  url 'http://www.syntevo.com/download/smartsynchronize/smartsynchronize-macosx-3_3_4.dmg'
  homepage 'http://www.syntevo.com'

  link 'SmartSynchronize 3.3.app'
  binary 'SmartSynchronize 3.3.app/Contents/MacOS/SmartSynchronize'
  caveats do
    files_in_usr_local
  end
end
