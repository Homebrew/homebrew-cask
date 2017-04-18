cask 'arq' do
  version '5.7.9'
  sha256 '9000e8e8863c2237254ce76ff3640f6b9e0f650f7b9f1bee54a6056e8925aed6'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: 'ebf33ac10b9fa792ed0625da59b82e99ff513e852ba5bc613082537429bed464'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
