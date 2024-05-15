cask "font-coming-soon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/comingsoon/ComingSoon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Coming Soon"
  desc "Based on the handwriting from mom when she was in 6th grade"
  homepage "https://fonts.google.com/specimen/Coming+Soon"

  font "ComingSoon-Regular.ttf"

  # No zap stanza required
end
