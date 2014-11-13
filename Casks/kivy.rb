cask :v1 => 'kivy' do
  version '1.8.0'
  sha256 'e6db3a157e67d09bacbe2e423feec33dedaca8e10d170362ddf59a70a59e2590'

  url "http://kivy.org/downloads/#{version}/Kivy-#{version}-osx.dmg"
  homepage 'http://kivy.org'
  license :unknown

  app 'Kivy.app'
end
