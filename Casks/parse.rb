class Parse < Cask
  version :latest
  sha256 :no_check

  url 'https://www.parse.com/downloads/cloud_code/parse'
  homepage 'https://parse.com'
  license :unknown

  container :type => :naked
  binary 'parse'

  postflight do
    system '/bin/chmod', '--', '0755', "#{destination_path}/parse"
  end
end
