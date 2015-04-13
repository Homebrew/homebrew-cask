cask :v1 => 'omnioutliner' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omnioutliner'
  homepage 'http://www.omnigroup.com/omnioutliner/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OmniOutliner.app'
end
