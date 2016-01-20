cask 'lincastor' do
  version '1.4'
  sha256 'fbe3af69e932cebdd0ddb76460018a4cc9194d60bb9476c2a42c2ccf59bdbba2'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/LinCastor.zip'
  appcast 'https://onflapp.appspot.com/lincastor',
          checkpoint: 'f5624589dfecb9b5fba5fab9e92a816e01cb7b4f172e94d5e462a62e643a4bea'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LinCastor.app'
end
