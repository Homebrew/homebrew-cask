cask :v1 => 'scratch' do
  version :latest
  sha256 :no_check

  url 'http://cdn.scratch.mit.edu/scratchr2/static/sa/Scratch.air'
  homepage 'http://scratch.mit.edu/scratch2download/'
  license :unknown    # todo: improve this machine-generated value

  app 'Scratch 2.app'
end
