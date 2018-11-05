cask 'brooklyn' do
  version '1.0.0'
  sha256 '77d8e3235db2464a28ca497d330a1a423a64f199d259173aff0a0b3306c9d351'

  url "https://github.com/pedrommcarrasco/Brooklyn/releases/download/#{version}/Brooklyn.saver.zip"
  appcast 'https://github.com/pedrommcarrasco/Brooklyn/releases.atom'
  name 'Brooklyn'
  homepage 'https://github.com/pedrommcarrasco/Brooklyn'

  screen_saver 'Brooklyn.saver'
end
