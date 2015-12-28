cask 'nwjs' do
  version '0.12.1'

  if Hardware::CPU.is_32_bit?
    sha256 '75b6280b6fb1d068e439a555079de599e57fb59b115a85e0e144e7d86b947d37'

    url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-ia32.zip"

    binary "nwjs-v#{version}-osx-ia32/nwjc"
    app "nwjs-v#{version}-osx-ia32/nwjs.app"
  else
    sha256 'e0c08ca3a3057310a1d84c1b288a313464c1922ea3cc00dd75991df62d90e845'

    url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-x64.zip"

    binary "nwjs-v#{version}-osx-x64/nwjc"
    app "nwjs-v#{version}-osx-x64/nwjs.app"
  end

  name 'NW.js'
  homepage 'http://nwjs.io'
  license :mit
end
