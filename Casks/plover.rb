cask "plover" do
  version "3.1.1"
  sha256 "c45c1c6cf797de62923d20e6e46aec0d946027b6b3cca4df2fc2db4e3183516b"

  # github.com/openstenoproject/plover/ was verified as official when first introduced to the cask
  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/plover-#{version}-py2-mac.dmg"
  appcast "https://github.com/openstenoproject/plover/releases.atom"
  name "Plover"
  desc "Open-source stenotype engine"
  homepage "https://www.openstenoproject.org/plover/"

  app "Plover.app"

  zap trash: "~/Library/Application Support/plover/"
end
