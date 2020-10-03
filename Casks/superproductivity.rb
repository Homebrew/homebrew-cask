cask "superproductivity" do
  version "5.9.2"
  sha256 "beec31ba34ab4f7842dae3ddd6ed177c9b01faa35560ba989902515dbf9275b9"

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
