cask 'bluej' do
  version '4.1.1'
  sha256 'b29a430489333ff5ee6aa459a1568ed73b799a828ab5e34f7eff94a0ae3402b3'

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name 'BlueJ'
  homepage 'https://www.bluej.org/'

  app "BlueJ #{version.sub(%r{[a-z]$}, '')}/BlueJ.app"
end
