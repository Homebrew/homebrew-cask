cask 'omniplan' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/omniplan'
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'
  license :commercial

  app 'OmniPlan.app'
end
