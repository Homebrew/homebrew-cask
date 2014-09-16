class Omnigraffle < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omnigraffle'
  homepage 'http://www.omnigroup.com/products/omnigraffle'

  app 'OmniGraffle.app'
  zap :files => '~/Library/Application Support/The Omni Group/OmniGraffle'
end
