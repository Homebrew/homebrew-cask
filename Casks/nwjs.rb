cask 'nwjs' do
  version '0.17.0'

  if Hardware::CPU.is_32_bit?
    sha256 '0170cb6acccb2329b4c31494a4bdb7e336e201204eba96e227e7b02546cc9ebb'

    url "https://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-ia32.zip"

    binary "nwjs-v#{version}-osx-ia32/nwjc"
    app "nwjs-v#{version}-osx-ia32/nwjs.app"
  else
    sha256 '35e2bf24c31d27da96f32f00bfe2d4c74a83c43b58a7ac61222e128c494f7e5e'

    url "https://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-x64.zip"

    binary "nwjs-v#{version}-osx-x64/nwjc"
    app "nwjs-v#{version}-osx-x64/nwjs.app"
  end

  name 'NW.js'
  homepage 'https://nwjs.io'
  license :mit
end
