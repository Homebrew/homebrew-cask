cask :v1 => 'scratch' do
  version :latest
  sha256 :no_check

  url 'http://cdn.scratch.mit.edu/scratchr2/static/sa/Scratch.air'
  homepage 'http://scratch.mit.edu/scratch2download/'
  license :unknown

  app 'Scratch 2.app'
end
