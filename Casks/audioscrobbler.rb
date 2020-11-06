cask "audioscrobbler" do
  version "0.9.15"
  sha256 "d14bd947f32a5e6c17645d9378b69b0aded91b95dd87a9a8971e013a8fff5063"

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  appcast "https://github.com/mxcl/Audioscrobbler.app/releases.atom"
  name "Audioscrobbler"
  desc "Minimal, robust iTunes scrobbling"
  homepage "https://github.com/mxcl/Audioscrobbler.app"

  app "Audioscrobbler.app"
end
