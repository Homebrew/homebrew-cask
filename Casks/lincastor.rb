cask 'lincastor' do
  version '1.4'
  sha256 'fbe3af69e932cebdd0ddb76460018a4cc9194d60bb9476c2a42c2ccf59bdbba2'

  # dl.dropboxusercontent.com/u/7614970 was verified as official when first introduced to the cask
  url 'https://dl.dropboxusercontent.com/u/7614970/LinCastor.zip'
  appcast 'https://onflapp.appspot.com/lincastor',
          checkpoint: 'f5624589dfecb9b5fba5fab9e92a816e01cb7b4f172e94d5e462a62e643a4bea'
  name 'LinCastor'
  homepage 'https://onflapp.wordpress.com/lincastor/'

  app 'LinCastor.app'
end
