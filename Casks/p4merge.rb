cask :v1 => 'p4merge' do
  version '2014.1'
  sha256 'c5d05d78596fe9b4f83193a11805a027b2652fdf87365de1321e671286fdca3f'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{^20},'')}/bin.macosx106x86_64/P4V.dmg"
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  license :oss

  app 'p4merge.app'
  caveats <<-EOS.undent
    git can be configured to use p4merge as a merge tool via

      https://gist.github.com/henrik242/1510148
  EOS
end
