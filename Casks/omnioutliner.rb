cask :v1 => 'omnioutliner' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omnioutliner'
  homepage 'http://www.omnigroup.com/omnioutliner/'
  license :unknown    # todo: improve this machine-generated value

  app 'OmniOutliner.app'
end
