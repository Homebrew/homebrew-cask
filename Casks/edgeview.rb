cask 'edgeview' do
  version '0.9998'
  sha256 'ee59450920a169ff64b6ff8c258648f1e4ee294242401d1769bd7fd36dc228e4'

  # dropboxusercontent.com/u/168552 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.minor}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          checkpoint: '3e1af95c9d64ba5e39f004d61ddb4da416171a04bc45a2fa5cf9e3489e1771ab'
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EdgeView.app'
end
