class Smartsynchronize < Cask
  url "http://www.syntevo.com/download/smartsynchronize/smartsynchronize-macosx-3_3_3.dmg"
  homepage "http://www.syntevo.com"
  version "3.3.3"
  sha256 "5e181292b0a54e50ad66b097eca81c4d7be42d3f001ec4a34b5a003e3cd79c96"
  link "SmartSynchronize 3.3.app"
  binary "SmartSynchronize 3.3.app/Contents/MacOS/SmartSynchronize"
  caveats do
    files_in_usr_local
  end
end
