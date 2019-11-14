cask 'jtool2' do
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/jtool2.tgz'
  name 'jtool 2'
  homepage 'http://newosxbook.com/tools/jtool.html'

  binary 'jtool2'

  caveats <<~EOS
    Since jtool2 is unsigned, it may be blocked from running the first time.
    If so, after running it once, allow it in System Preferences > Security (General tab)

    Jtool 2 "What's New" is available in

      #{staged_path}/WhatsNew.txt
  EOS
end
