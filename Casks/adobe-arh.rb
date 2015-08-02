cask :v1_1 => 'adobe-arh' do
  version :latest
  sha256 :no_check

  url 'http://airdownload.adobe.com/air/distribution/latest/mac/arh'
  name 'AIR Redistribution Helper'
  name 'ARH'
  homepage 'http://help.adobe.com/en_US/air/redist/WS485a42d56cd19641-70d979a8124ef20a34b-8000.html'
  license :gratis

  container :type => :naked
  binary 'arh'

  postflight do
    set_permissions "#{staged_path}/arh", '755'
  end
end
