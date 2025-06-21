cask "jlutil" do
  version :latest
  sha256 :no_check

  url "https://newosxbook.com/tools/jlutil.tgz"
  name "SimPLISTic"
  name "jlutil"
  desc "Property list utility"
  homepage "https://newosxbook.com/tools/simplistic.html"

  deprecate! date: "2024-11-17", because: :unmaintained

  binary "jlutil.universal", target: "jlutil"

  # No zap stanza required
end
