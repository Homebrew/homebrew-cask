cask :v1 => 'p4merge' do
  version '2014.2'
  sha256 '766b6f6b8669f889f1186dd96408b5b8af6b9dc6c602784d6d6ea25130007709'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{^20},'')}/bin.macosx107x86_64/P4V.dmg"
  name 'P4Merge'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  license :oss

  app 'p4merge.app'

  caveats <<-EOS.undent
    git can be configured to use p4merge as a merge tool via

      https://gist.github.com/henrik242/1510148
  EOS
end
