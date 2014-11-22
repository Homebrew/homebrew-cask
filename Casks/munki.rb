cask :v1 => 'munki' do
  version '2.0.1'
  sha256 'f4b586c254fcd47f54d4b58ea7c43308ee1472b41f03e7b59ceb9fd6605a54b8'

  url "https://github.com/munki/munki/releases/download/v#{version}/munkitools-#{version}.2253.pkg"
  homepage 'http://munki.github.io/munki/'
  license :oss

  pkg "munkitools-#{version}.2253.pkg"

  uninstall :pkgutil => 'com.googlecode.munki.*'
end
