cask 'font-cica' do
  version '4.1.1'
  sha256 '884733b723cc6896786c2e2c6e1778cc928fd6e1baac03169d18d553959067a2'

  url "https://github.com/miiton/Cica/releases/download/v#{version}/Cica-v#{version}.zip"
  appcast 'https://github.com/miiton/Cica/releases.atom'
  name 'Cica'
  homepage 'https://github.com/miiton/Cica'

  font 'Cica-Bold.ttf'
  font 'Cica-BoldItalic.ttf'
  font 'Cica-Regular.ttf'
  font 'Cica-RegularItalic.ttf'
end
