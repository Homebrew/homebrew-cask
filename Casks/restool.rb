cask :v1 => 'restool' do
  version '0.2.1'
  sha256 '7eb100229d41dc2b284c0e74c74e1ed785c8fd0ed2665756073d847806efe66e'

  url "https://github.com/Nikola-K/RESTool/releases/download/v#{version}/RESTool#{version}osx.zip"
  appcast 'https://github.com/Nikola-K/RESTool/releases.atom'
  name 'RESTool'
  homepage 'https://nikola-k.github.io/RESTool/'
  license :apache

  app 'RESTool.app'
end
