cask "cubicsdr" do
  version "0.2.5"
  sha256 "9180e56e84a1d78935fb13ce362e3b8636a96b38d0695748078b43f9f6c3cb2c"

  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg",
      verified: "github.com/cjcliffe/CubicSDR/"
  appcast "https://github.com/cjcliffe/CubicSDR/releases.atom"
  name "CubicSDR"
  desc "Cross-Platform Software-Defined Radio Application"
  homepage "https://cubicsdr.com/"

  app "CubicSDR.app"
end
