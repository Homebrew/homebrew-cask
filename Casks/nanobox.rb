cask :v1 => 'nanobox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/tools.nanobox.io/cli/darwin/amd64/nanobox'
  name 'nanobox'
  homepage 'http://www.nanobox.io/'
  license :mpl

  depends_on :cask => 'virtualbox'
  depends_on :cask => 'vagrant'

  container :type => :naked

  binary 'nanobox'

  postflight do
    set_permissions "#{staged_path}/nanobox", '755'
  end

  zap :delete => [
                    '~/.nanobox',
                    '/opt/nanobox',
                ]
end
