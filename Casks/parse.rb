cask :v1 => 'parse' do
  version :latest
  sha256 :no_check

  url 'https://parse.com/downloads/cloud_code/cli/parse-osx/latest'
  name 'Parse'
  homepage 'https://parse.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on :formula => 'unar'

  container :type => :generic_unar # The downloaded file don't have a .gz suffix, so specifying :gzip here won't work.
  binary 'parse-latest', :target => 'parse'

  postflight do
    set_permissions "#{staged_path}/parse-latest", '0755'
  end
end
