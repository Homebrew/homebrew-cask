class Smartsynchronize < Cask
  version '3.3.4'
  sha256 'dc3732ef768d06a610742b0e1cf562c3cfce973e378b4c2dead6bf6cff9966f8'

  url "http://www.syntevo.com/download/smartsynchronize/smartsynchronize-macosx-#{version.gsub('.','_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown

  app "SmartSynchronize #{version.sub(%r{^(\d+\.\d+).*},'\1')}.app"
  binary "SmartSynchronize #{version.sub(%r{^(\d+\.\d+).*},'\1')}.app/Contents/MacOS/SmartSynchronize"
  caveats do
    files_in_usr_local
  end
end
