cask "penc" do
  version "0.4.1"
  sha256 "89c4b239189e13993a0d5189e7eafdc9652dde41fe2edaea4746abb779e3c014"

  # github.com/dgurkaynak/Penc/ was verified as official when first introduced to the cask
  url "https://github.com/dgurkaynak/Penc/releases/download/#{version}/Penc-#{version}.dmg"
  appcast "https://github.com/dgurkaynak/Penc/releases.atom"
  name "Penc"
  desc "Trackpad-oriented window manager"
  homepage "https://dgurkaynak.github.io/Penc/"

  depends_on macos: ">= :high_sierra"

  app "Penc.app"
end
