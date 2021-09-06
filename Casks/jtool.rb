cask "jtool" do
  version :latest
  sha256 :no_check

  url "http://www.newosxbook.com/tools/jtool.tar"
  name "jtool"
  homepage "http://newosxbook.com/tools/jtool.html"

  binary "jtool"
  manpage "jtool.1"

  caveats do
    discontinued
  end
end
