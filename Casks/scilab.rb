cask 'scilab' do
  version '6.0.1'
  sha256 '22590059d9264d4520f727bcb76a9a313fff7c4979a803fd9ee99e9d87ce23cc'

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-x86_64.dmg"
  name 'Scilab'
  homepage 'https://www.scilab.org/'

  app "scilab-#{version}.app"
end
