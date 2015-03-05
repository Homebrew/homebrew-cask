cask :v1 => 'parse' do
  version :latest
  sha256 :no_check

  url 'https://www.parse.com/downloads/cloud_code/parse'
  name 'Parse'
  homepage 'https://parse.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :type => :naked
  binary 'parse'

  postflight do
    system '/bin/chmod', '--', '0755', "#{staged_path}/parse"
  end
end
