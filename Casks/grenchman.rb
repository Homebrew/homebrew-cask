cask 'grenchman' do
  version '0.2.0'
  sha256 'f70542dffc1f60e372b77582998570b02ff21c85f699fd1854c98e4359804bb6'

  url "https://technomancy.github.io/grenchman/downloads/grench-#{version}-mac"
  name 'Grenchman'
  homepage 'http://leiningen.org/grench.html'

  depends_on formula: 'libffi'

  binary 'grench-0.2.0-mac', target: 'grench'
end
