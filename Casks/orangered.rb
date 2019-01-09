cask 'orangered' do
  version '2.0.1'
  sha256 '743402b23fc5df9edabb3487191b42b17227861c341001adecaf2a74e799e5b1'

  # github.com/voidref/orangered was verified as official when first introduced to the cask
  url "https://github.com/voidref/orangered/releases/download/#{version}/Orangered.app.zip"
  appcast 'https://github.com/voidref/orangered/releases.atom'
  name 'Orangered'
  homepage 'http://voidref.com/orangered/Orangered!.html'

  app 'Orangered.app'
end
