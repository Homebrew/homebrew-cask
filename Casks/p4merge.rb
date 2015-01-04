cask :v1 => 'p4merge' do
  version '2014.2'
  sha256 'cb8f210435de8186af92e5d376a64e6b5f48c67d1b4e892628de88d54ce4918e'

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
