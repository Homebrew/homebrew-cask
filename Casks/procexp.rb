cask "procexp" do
  version :latest
  sha256 :no_check

  url "http://newosxbook.com/tools/procexp.tgz"
  name "Process Explorer"
  homepage "http://www.newosxbook.com/tools/procexp.html"

  binary "procexp.universal", target: "procexp"
  manpage "procexp.1"
end
