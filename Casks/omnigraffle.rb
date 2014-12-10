cask :v1 => 'omnigraffle' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omnigraffle'
  homepage 'http://www.omnigroup.com/products/omnigraffle'
  license :unknown    # todo: improve this machine-generated value

  app 'OmniGraffle.app'

  zap :delete => '~/Library/Application Support/The Omni Group/OmniGraffle'
end
