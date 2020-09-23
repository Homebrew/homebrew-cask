cask "pd-l2ork" do
  version "2.14.2"
  sha256 "b0ad9b2660eac9387b52b448b2bf8348423221488219e757db8f7d33a3bd4ab1"

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
