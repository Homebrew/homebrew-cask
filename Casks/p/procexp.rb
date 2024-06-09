cask "procexp" do
  version "1.0.0"
  sha256 :no_check

  url "https://newosxbook.com/tools/procexp.tgz"
  name "Process Explorer"
  homepage "https://www.newosxbook.com/tools/procexp.html"

  livecheck do
    url :homepage
    regex(/v(\d+(?:\.\d+)+)/i)
  end

  binary "procexp.universal", target: "procexp"
  manpage "procexp.1"
end
