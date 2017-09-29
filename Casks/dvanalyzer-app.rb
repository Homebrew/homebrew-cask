cask 'dvanalyzer-app' do
  version '1.4.2'
  sha256 'b25585b4fabbb432caea36cd92b3397b94367e33f862e330a11b5933e8278fb5'

  url "https://mediaarea.net/download/binary/dvanalyzer-gui/#{version}/DVAnalyzer_GUI_#{version}_Mac.dmg"
  appcast 'https://github.com/MediaArea/DV_Analyzer/releases.atom',
          checkpoint: 'ad37a9cffe726a2bdb0adc8e3d66387278788dc84bdcd21385dd3435dc0243bb'
  name 'DVAnalyzer'
  homepage 'https://mediaarea.net/DVAnalyzer/'

  app 'DVAnalyzer.app'
end
