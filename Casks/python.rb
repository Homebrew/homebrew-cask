cask :v1 => 'python' do
  version '2.7.8'
  sha256 '8411ce3ce0172c1f2a05e86eb10931e88900b58bf80b0c6adc64a520ce20b494'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.dmg"
  homepage 'http://www.python.org/'
  license :oss

  pkg 'Python.mpkg'

  uninstall :delete => [
                       "/Library/Receipts/Python*-#{version.slice(/\d+\.\d+/)}.pkg",
                       "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                       "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                       "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
