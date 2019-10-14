cask 'font-cica' do
  version '5.0.1'
  sha256 'b61ae55fb1a4a98dd78e90fe68649bcfaabb20a5eaaffa57c246356890c6b0df'

  url "https://github.com/miiton/Cica/releases/download/v#{version}/Cica_v#{version}_with_emoji.zip"
  appcast 'https://github.com/miiton/Cica/releases.atom'
  name 'Cica'
  homepage 'https://github.com/miiton/Cica'

  font 'Cica-Bold.ttf'
  font 'Cica-BoldItalic.ttf'
  font 'Cica-Regular.ttf'
  font 'Cica-RegularItalic.ttf'
end
