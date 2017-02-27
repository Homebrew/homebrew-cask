cask 'bioedit' do
  version '7.1.9'
  sha256 :no_check

  ## info:
  ## https://guangchuangyu.github.io/2016/03/yet-an-unofficial-bioedit-for-osx/
  ## 
  url "https://gitlab.com/GuangchuangYu/BioEdit-OSX/raw/master/BioEdit.dmg"
  name 'BioEdit: Biological sequence alignment editor'
  homepage 'http://www.mbio.ncsu.edu/bioedit/bioedit.html'

  depends_on macos: '>= :mavericks'
  depends_on cask: 'xquartz'

  app 'BioEdit.app'

  uninstall pkgutil: 'com.adobe.acrobat.DC.reader.*',
            delete:  '/Applications/BioEdit.app'

  zap       delete: [
                      '~/Library/Caches/BioEdit'
                    ]
end
