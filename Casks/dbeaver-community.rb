cask 'dbeaver-community' do
  version '4.0.5'
  sha256 '08b45c877881e007650618e22c410cf2f7b91b23bd1e25ba4af2933d2919bd3e'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '8e8ef6237cabd59551ad2c6f4d6766fa3442eb7b3015c1da623f127842fd4991'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
