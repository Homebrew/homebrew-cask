cask 'process-monitor' do
  version '1.1'
  sha256 :no_check

  # s3.amazonaws.com/sqwarq.com/AppCasts was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/ProcessMonitor.app.zip'
  appcast 'https://s3.amazonaws.com/sqwarq.com/AppCasts/procmon-updates.xml',
          checkpoint: '3961558b7f0ee17bdb52704fa2237bcd161f4812d01690f7579e7612fc84db95'
  name 'Process Monitor'
  homepage 'https://sqwarq.com/process-monitor/'

  depends_on macos: '>= :mountain_lion'
  auto_updates true

  app 'Process Monitor.app'
end
