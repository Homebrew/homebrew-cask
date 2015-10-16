cask :v1 => 'blue-jeans-browser-plugin' do
  version '2.85.47.8'
  sha256 'b1444c3bf1ebd2d329e365e77ec4a19e5456c5ec9bfc0c2d8410952a889f56e8'

  url "https://swdl.bluejeans.com/skinny/rbjnplugin_#{version}.pkg"
  name 'Blue Jeans Browser Plug-in'
  homepage 'http://bluejeans.com/'
  license :gratis

  container :type => :xar

  # container :nested => 'Scripts' doesn't recognize a gzipped CPIO
  preflight do
    system '/usr/bin/tar', '-xf', "#{staged_path}/Scripts", '-C', staged_path
    system '/bin/rm', '-f', '--', "#{staged_path}/Scripts"
  end

  internet_plugin "rbjninstallplugin_#{version}.plugin"
  internet_plugin "rbjnplugin_#{version}.plugin"
end
