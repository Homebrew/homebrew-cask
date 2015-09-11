cask :v1 => 'omniplan' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omniplan'
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OmniPlan.app'
end
