cask 'process-monitor' do
  version '1.1'
  sha256 :no_check

  # s3.amazonaws.com/sqwarq.com/PublicZips/ProcessMonitor.app.zip was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/ProcessMonitor.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/procmon-updates.xml',
          checkpoint: '3961558b7f0ee17bdb52704fa2237bcd161f4812d01690f7579e7612fc84db95'
  name 'Process Monitor'
  homepage 'https://sqwarq.com/process-monitor/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Process Monitor.app'
end
