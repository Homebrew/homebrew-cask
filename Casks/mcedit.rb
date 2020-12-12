cask "mcedit" do
  version "1.5.6.0"
  sha256 "e2026de3589e3e65086a385ee4e02d607337bc9da11357d1b3ac106e2ee843d7"

  # github.com/Podshot/MCEdit-Unified/ was verified as official when first introduced to the cask
  url "https://github.com/Podshot/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast "https://github.com/Podshot/MCEdit-Unified/releases.atom"
  name "MCEdit-Unified"
  homepage "https://www.mcedit-unified.net/"

  app "mcedit.app"
end
