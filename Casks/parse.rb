cask :v1 => 'parse' do
  version :latest
  sha256 :no_check

  url 'https://www.parse.com/downloads/cloud_code/parse'
  homepage 'https://parse.com'
  license :unknown

  container :type => :naked
  binary 'parse'

  postflight do
    system '/bin/chmod', '--', '0755', "#{staged_path}/parse"
  end
end
