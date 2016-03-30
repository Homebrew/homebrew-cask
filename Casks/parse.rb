cask 'parse' do
  version :latest
  sha256 :no_check

  url 'https://parse.com/downloads/cloud_code/cli/parse-osx/latest'
  name 'Parse'
  homepage 'https://parse.com'
  license :bsd

  depends_on formula: 'unar'
  container type: :generic_unar

  binary 'parse-latest', target: 'parse'

  postflight do
    set_permissions "#{staged_path}/parse-latest", '0755'
  end
end
