cask :v1 => 'meshlab' do
  version '1.3.3'
  sha256 '7a19583ecd8282e9dc84e827e9e667f2139edd371b5f83a5c3fcbb88cb33923d'

  url "http://downloads.sourceforge.net/project/meshlab/meshlab/MeshLab%20v#{version}/MeshLabMac_v#{version.gsub('.','')}.dmg"
  homepage 'http://meshlab.sourceforge.net/'
  license :gpl

  app 'meshlab.app'
  postflight do
    # workaround for bug which breaks the app on case-sensitive filesystems
    Dir.chdir("#{staged_path}/meshlab.app/Contents/MacOS") do
      File.symlink("meshlab", "MeshLab") unless File.exists? "MeshLab"
    end
  end
end
