cask "marathon" do
  version "20260930"
  sha256 "2506bf67ed463f937811114b4811d5c89cbce6ec69cad453c06f885b80279650"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Marathon[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  depends_on :macos

  app "Classic Marathon.app"

  zap trash: [
    "~/Library/Application Support/Marathon",
    "~/Library/Logs/Marathon Log.txt",
    "~/Library/Preferences/Marathon",
    "~/Library/Saved Application State/org.bungie.source.Marathon.savedState",
  ]
end
