cask "gfxutil" do
  version "1.80b"
  sha256 "2aecb08afc46ebb5507a8003bf034c1422d70adf46508affc45bd232695374d9"

  url "https://github.com/acidanthera/gfxutil/releases/download/#{version}/gfxutil-#{version}-RELEASE.zip"
  appcast "https://github.com/acidanthera/gfxutil/releases.atom"
  name "gfxutil"
  desc "Tool to work with Device Properties commonly found in Apple firmwares"
  homepage "https://github.com/acidanthera/gfxutil/"

  binary "gfxutil"
end
