cask "seamonkey" do
  version "2.53.5.1"

  language "de" do
    sha256 "4c14e1c717198f770069b102a43b38be09df789892302f1e5f0563d7f4e35079"
    "de"
  end
  language "en-GB" do
    sha256 "a3efa795ab6aed915b2fd47b2640db099b0299be82e5f2b5b667df3a3756690f"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "437c4127483d8db3c0cfcfe978f17d12345de7172e3b1fe712172f2a8cd03bce"
    "en-US"
  end
  language "fr" do
    sha256 "846580b1ada457df23f44e3976f3cca0c6e03d1c777e68b683ad6c039763e534"
    "fr"
  end
  language "it" do
    sha256 "7b57f8c76aafde48cb8ce48caf616495d24bfa8ce795af94043d7e495933a41b"
    "it"
  end
  language "ru" do
    sha256 "06639433277b3c4fbf08cded488168b4ed0c3121ed9f3b0ed09954d984a320e8"
    "ru"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
  appcast "https://www.seamonkey-project.org/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  auto_updates true

  app "SeaMonkey.app"
end
