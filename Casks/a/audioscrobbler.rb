cask "audioscrobbler" do
  version "0.9.15"
  sha256 "d14bd947f32a5e6c17645d9378b69b0aded91b95dd87a9a8971e013a8fff5063"

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  name "Audioscrobbler"
  desc "Minimal, robust iTunes scrobbling"
  homepage "https://github.com/mxcl/Audioscrobbler.app"

  disable! date: "2024-09-08", because: :unmaintained

  app "Audioscrobbler.app"

  zap trash: [
    "~/Library/Caches/fm.last.Audioscrobbler",
    "~/Library/Preferences/fm.last.Audioscrobbler.plist",
  ]

  caveats do
    requires_rosetta
  end
end
