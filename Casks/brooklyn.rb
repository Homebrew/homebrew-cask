cask 'brooklyn' do
  version '2.0.0'
  sha256 'fd2dbc0bfdc5d12db202d7e6c7eb0a11e822e669ac1edbf12d205f2d91e9f088'

  url "https://github.com/pedrommcarrasco/Brooklyn/releases/download/#{version}/Brooklyn.saver.zip"
  appcast 'https://github.com/pedrommcarrasco/Brooklyn/releases.atom'
  name 'Brooklyn'
  homepage 'https://github.com/pedrommcarrasco/Brooklyn'

  screen_saver 'Brooklyn.saver'
end
