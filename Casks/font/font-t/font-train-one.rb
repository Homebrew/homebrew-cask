cask "font-train-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trainone/TrainOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Train One"
  homepage "https://fonts.google.com/specimen/Train+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Train One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TrainOne-Regular.ttf"

  # No zap stanza required
end
