cask :v1 => 'restool' do
  version '0.2.1'
  sha256 '7eb100229d41dc2b284c0e74c74e1ed785c8fd0ed2665756073d847806efe66e'

  url 'https://github.com/Nikola-K/RESTool/releases/download/v0.2.1/RESTool0.2.1osx.zip'
  name 'RESTool'
  homepage 'http://nikola-k.github.io/RESTool/'
  license :apache

  app 'RESTool.app'
end
