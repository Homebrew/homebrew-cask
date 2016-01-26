cask 'python' do
  version '2.7.11'
  sha256 'af11271087ad636b18be19ca7207f9fabdbe2e4649e92d4b10cc43a26a4a7d21'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.pkg"
  name 'Python'
  homepage 'https://www.python.org/'
  license :oss

  pkg "python-#{version}-macosx10.6.pkg"

  uninstall delete: [
                      "/Library/Receipts/Python*-#{version.slice(%r{\d+\.\d+})}.pkg",
                      "/Applications/Python #{version.slice(%r{\d+\.\d+})}",
                      "/Library/Frameworks/Python.Framework/Versions/#{version.slice(%r{\d+\.\d+})}",
                      "/Library/Python/#{version.slice(%r{\d+\.\d+})}",
                    ]

  zap delete: "~/Library/Python/#{version.slice(%r{\d+\.\d+})}"
end
