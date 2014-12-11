cask :v1 => 'mauve' do
  version '2.3.1'
  sha256 '586fe214eb6c430f2a98fd865856111b79502ff526ab2f6268dab1d99b337907'

  url "http://gel.ahabs.wisc.edu/mauve/downloads/Mauve-#{version}.dmg"
  homepage 'http://gel.ahabs.wisc.edu/mauve/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mauve.app'
end
