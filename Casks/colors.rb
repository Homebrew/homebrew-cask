cask :v1 => 'colors' do
  version '1.9'
  sha256 '60c8b53d0030624677dc500fd235e5ef41ba3b8a50d4d3ab68a8fba34de84e2c'

  url "https://mattpatenaude.com/software/colors-#{version}.zip"
  homepage 'http://mattpatenaude.com/'
  license :unknown

  app 'Colors.app'
end
