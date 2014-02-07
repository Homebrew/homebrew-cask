class BoxSync < Cask
   url 'https://box.com/sync4mac'
   homepage 'https://box.com/sync4mac'
   version 'latest'
   no_checksum
   caveats do
       manual_installer 'Box Sync.app'
   end
end