cask :v1 => 'adobe-arh' do
  version :latest
  sha256 :no_check

  url 'http://airdownload.adobe.com/air/distribution/latest/mac/arh'
  name 'AIR Redistribution Helper'
  name 'ARH'
  homepage 'http://help.adobe.com/en_US/air/redist/WS485a42d56cd19641-70d979a8124ef20a34b-8000.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :type => :naked
  binary 'arh'

  postflight do
    system '/bin/chmod', '--', '755', "#{staged_path}/arh"
  end

  caveats "Please refer to the documentation at #{homepage}"
end
