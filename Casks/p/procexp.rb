cask "procexp" do
  version "1.0.0"
  sha256 :no_check

  url "https://newosxbook.com/tools/procexp.tgz"
  name "Process Explorer"
  desc "Jonathan Levin's procexp utility"
  homepage "https://www.newosxbook.com/tools/procexp.html"

  livecheck do
    url :homepage
    regex(/v(\d+(?:\.\d+)+)/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  binary "procexp"

  # No zap stanza required
end
