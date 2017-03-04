cask 'presenter' do
  version '4.0.4'
  sha256 '491d9086fc34cf00a57b683903fbe82cd64bc6f5ac8c88d6daec815d9913a8fa'

  url "http://files.ipevo.com/download/driver/ipevo_presenter/Presenter_mac_#{version}.zip"
  name 'IPEVO Presenter'
  homepage 'https://support.ipevo.com/support/qa/IPEVO-Presenter'

  app 'Presenter.app'
end
