class P4merge < Cask
  url 'http://filehost.perforce.com/perforce/r13.1/bin.macosx106x86_64/P4V.dmg'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  version '13.1'
  sha1 'b082af5840282bcff5c2445c586316f72cf71551'

  link :app, 'p4merge.app'

  def caveats; <<-EOS.undent
    You can set up git to use p4merge as a merge tool by following the instructions available here:
      https://gist.github.com/henrik242/1510148
    EOS
  end
end
