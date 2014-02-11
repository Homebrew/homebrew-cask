class P4merge < Cask
  url 'http://filehost.perforce.com/perforce/r13.4/bin.macosx106x86_64/P4V.dmg'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  version '2013.4'
  sha1 '927dbbc79cd27be47a08f38a57dcff7b14cb4ac8'
  link 'p4merge.app'
  caveats <<-EOS.undent
    You can set up git to use p4merge as a merge tool by following the instructions available here:
      https://gist.github.com/henrik242/1510148
    EOS
end
