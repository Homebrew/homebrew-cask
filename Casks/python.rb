cask :v1 => 'python' do
  version '2.7.9'
  sha256 '6255db88811348cf5f950ad93bb301a913c20b118b1bedee4f2110f9e325e1fd'

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
