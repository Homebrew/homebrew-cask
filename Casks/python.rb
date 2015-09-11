cask :v1 => 'python' do
  version '2.7.10'
  sha256 'dc08b90ebc21fd3987909144ed95aa36474f69e6f9c8deb224db5c626838d013'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.pkg"
  name 'Python'
  homepage 'https://www.python.org/'
  license :oss

  pkg "python-#{version}-macosx10.6.pkg"

  uninstall :delete => [
                       "/Library/Receipts/Python*-#{version.slice(/\d+\.\d+/)}.pkg",
                       "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                       "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                       "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]

  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
