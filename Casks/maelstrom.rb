cask 'maelstrom' do
  version '3.0.6a'
  sha256 '78e714a422800b5a5026e7e719f74adf30e164a4c72a5c5db51cabb72a284402'

  url "https://www.libsdl.org/projects/Maelstrom/bin/Maelstrom-#{version}-MacOSX.dmg"
  name 'Maelstrom'
  homepage 'https://www.libsdl.org/projects/Maelstrom/index.html'

  app 'Maelstrom.app'
end
