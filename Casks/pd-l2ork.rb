cask "pd-l2ork" do
  version "2.15.2"
  sha256 "f120b2e6f161db0f4022b8dac16247b30bdcaea5088ba0e00b014d5d9a2d457e"

  # github.com/agraef/purr-data/ was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/osx_10.11-x86_64-dmg.zip"
  appcast "https://github.com/agraef/purr-data/releases.atom"
  name "Pd-l2ork"
  name "Purr Data"
  desc "Purr Data - Jonathan Wilkes' cross-platform Pd-l2ork version"
  homepage "https://agraef.github.io/purr-data/"

  app "Pd-l2ork.app"
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", "0777"
  end
end
