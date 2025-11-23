cask "filemon" do
  version "2.0"
  sha256 :no_check

  url "https://newosxbook.com/tools/filemon.tgz"
  name "File Monitor"
  desc "FSEvents client"
  homepage "https://newosxbook.com/tools/filemon.html"

  livecheck do
    url :homepage
    regex(/File\s*Monitor\s+(\d+(?:\.\d+)+)/i)
  end

  binary "filemon"

  # No zap stanza required
end
