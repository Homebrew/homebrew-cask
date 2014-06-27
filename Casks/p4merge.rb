class P4merge < Cask
  version '2014.1'
  sha256 'ff643c91069cb952d35146be5aa3be519119d4abce2a585d6ff307ab42e59d70'

  url 'http://filehost.perforce.com/perforce/r14.1/bin.macosx106x86_64/P4V.dmg'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'

  link 'p4merge.app'
  caveats <<-EOS.undent
    You can set up git to use p4merge as a merge tool by following the instructions available here:
      https://gist.github.com/henrik242/1510148
    EOS
end
