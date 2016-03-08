cask 'nwjs' do
  version '0.12.3'

  if Hardware::CPU.is_32_bit?
    sha256 '0170cb6acccb2329b4c31494a4bdb7e336e201204eba96e227e7b02546cc9ebb'

    url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-ia32.zip"

    binary "nwjs-v#{version}-osx-ia32/nwjc"
    app "nwjs-v#{version}-osx-ia32/nwjs.app"
  else
    sha256 '416747be34ad3bbae008ac6121551fda1505dfac55169cbd025558b29a40faf4'

    url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-x64.zip"

    binary "nwjs-v#{version}-osx-x64/nwjc"
    app "nwjs-v#{version}-osx-x64/nwjs.app"
  end

  name 'NW.js'
  homepage 'http://nwjs.io'
  license :mit
end
