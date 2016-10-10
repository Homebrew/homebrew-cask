cask 'edgeview' do
  version '0.9999'
  sha256 '25ad46a6e90d97f89d80a3b24ffd1ac361004772990880c531f9095d6976bada'

  # dropboxusercontent.com/u/168552 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/files/EdgeView_#{version.minor}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml',
          checkpoint: '4bc735f9b4042e6bc67067de3ef236c30c831e375f9ad99cd780790bcbf8e94b'
  name 'EdgeView'
  homepage 'https://edgehigh.wordpress.com'

  app 'EdgeView.app'
end
