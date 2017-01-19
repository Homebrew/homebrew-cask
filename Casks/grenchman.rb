cask 'grenchman' do
  version '0.2.0'
  sha256 'f70542dffc1f60e372b77582998570b02ff21c85f699fd1854c98e4359804bb6'

  # technomancy.github.io/grenchman/downloads was verified as official when first introduced to the cask
  url "https://technomancy.github.io/grenchman/downloads/grench-#{version}-mac"
  name 'Grenchman'
  homepage 'https://leiningen.org/grench.html'

  depends_on formula: 'libffi'

  container type: :naked

  binary "grench-#{version}-mac", target: 'grench'
end
