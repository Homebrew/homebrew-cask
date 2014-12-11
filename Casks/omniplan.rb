cask :v1 => 'omniplan' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omniplan'
  homepage 'http://www.omnigroup.com/products/omniplan/'
  license :unknown    # todo: improve this machine-generated value

  app 'OmniPlan.app'
end
