cask :v1 => 'manopen' do
  version '2.6'
  sha256 '7b383ca493b0b360bb58e65f7e7ce0a92383ff38c5221cc410eaf03f1117a958'

  url "http://www.clindberg.org/projects/ManOpen-#{version}.dmg"
  homepage 'http://www.clindberg.org/projects/ManOpen.html'
  license :unknown    # todo: improve this machine-generated value

  app 'ManOpen.app'
  binary 'openman'
  artifact 'openman.1', :target => '/usr/local/share/man/man1/openman.1'
end
