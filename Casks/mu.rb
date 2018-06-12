cask 'mu' do
  version '0.9.13'
  sha256 '58301468059907b10c1f8176df1240231371541836688355b44e1716b10bae84'

  # github.com/mu-editor/mu was verified as official when first introduced to the cask
  url "https://github.com/mu-editor/mu/releases/download/v#{version}/mu-#{version}.osx.zip"
  appcast 'https://github.com/mu-editor/mu/releases.atom'
  name 'Mu'
  homepage 'https://codewith.mu/'

  app 'Mu.app'
end
