cask :v1 => 'lincastor' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/LinCastor.zip'
  name 'LinCastor'
  appcast 'https://onflapp.appspot.com/lincastor',
          :sha256 => '73779a4fd108e386f7da331dc54810f33de4af3a25e66b75a8155b24382a155f'
  homepage 'http://onflapp.wordpress.com/lincastor/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LinCastor.app'
end
