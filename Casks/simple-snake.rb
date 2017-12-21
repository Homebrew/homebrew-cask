cask 'simple-snake' do
  version '2.0.0'
  sha256 '36b43494f7def3694c52107998ea2f746d1a7258e0af811ff8da2d5a2a9b04bb'

  # github.com/hasahmed/simple-snake/releases was verified as official when first introduced to the cask
  url 'https://github.com/hasahmed/simple-snake/releases/download/v2.0.1/simple-snake.tar.gz'
  name 'Simple Snake'
  homepage 'http://pages.iu.edu/~hasahmed/snake/'

  app 'Simple Snake.app'
end
