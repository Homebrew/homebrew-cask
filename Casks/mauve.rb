cask 'mauve' do
  version '2.3.1'
  sha256 '586fe214eb6c430f2a98fd865856111b79502ff526ab2f6268dab1d99b337907'

  url "https://asap.genetics.wisc.edu/software/mauve/downloads/Mauve-#{version}.dmg"
  name 'Mauve'
  homepage 'https://asap.genetics.wisc.edu/software/mauve/'
  license :gpl

  app 'Mauve.app'
end
