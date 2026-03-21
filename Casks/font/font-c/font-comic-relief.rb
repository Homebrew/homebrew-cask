cask "font-comic-relief" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/comicrelief"
  name "Comic Relief"
  homepage "https://fonts.google.com/specimen/Comic+Relief"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Comic Relief",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ComicRelief-Bold.ttf"
  font "ComicRelief-Regular.ttf"

  # No zap stanza required
end
