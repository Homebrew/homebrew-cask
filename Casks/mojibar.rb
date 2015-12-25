cask 'mojibar' do
  version '1.2.0'
  sha256 '85471afcab61f08c92328ad3267d806caf288d3b554103b5b74929a6be3f577f'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          :sha256 => '8e8ac6049328e2a5ebd84c48dc697bb45f9e76fc9adae1d54e639130b903df4e'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
