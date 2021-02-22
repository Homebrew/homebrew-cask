cask "onionshare" do
  version "2.3"
  sha256 "c5618e613d98cd95443156ed73416f4ddddcd37c824adb4b8301e23a4f16bfd3"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.pkg"
  appcast "https://github.com/micahflee/onionshare/releases.atom"
  name "OnionShare"
  desc "Securely and anonymously send and receive files"
  homepage "https://onionshare.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OnionShare.app"
end
