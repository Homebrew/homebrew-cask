cask 'crunch' do
  version '2.0.0'
  sha256 'fcb91a281d3c6f9c5374c0171766325bd279be31124b645bd048a7ffe809db3b'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: '26cb8485dc928836aef770e322c32de02949bcecdba44667d856f67044b8595a'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
