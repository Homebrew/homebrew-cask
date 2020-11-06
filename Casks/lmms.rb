cask "lmms" do
  version "1.2.2"
  sha256 "e5aa82086dc67817a763f3e54aa0786cdca590f26981584c07f9ff2ff1fb0503"

  # github.com/LMMS/lmms/ was verified as official when first introduced to the cask
  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.13.dmg"
  appcast "https://github.com/LMMS/lmms/releases.atom"
  name "LMMS"
  desc "Cross-platform music production software"
  homepage "https://lmms.io/"

  depends_on macos: ">= :high_sierra"

  app "LMMS.app"
end
