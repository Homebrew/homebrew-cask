cask "metaz" do
  version "1.0.beta-113"
  sha256 "5f0d43794ac76c025ad1c0f6419dfea58c8c696d7e2782060d2aa12554316588"

  # github.com/griff/metaz/ was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast "https://github.com/griff/metaz/releases.atom"
  name "MetaZ"
  desc "Mp4 meta-data editor"
  homepage "https://griff.github.io/metaz/"

  app "MetaZ.app"
end
