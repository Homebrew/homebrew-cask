cask 'nozbe' do
  version '3.2.3'
  sha256 '0befb34fd98fe763417dc9809bf9a778b41d54603b5e51930d0c9523400cff66'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com'
  license :freemium

  app 'Nozbe.app'
end
