cask "font-cal-sans" do
  version "1.0.0"
  sha256 "888fd98adfb1e6cd5606dd85881163d11c9c4007eaf01d015262893a48983b01"

  url "https://github.com/calcom/font/releases/download/v#{version}/CalSans_Semibold_v#{version}.zip"
  name "Cal Sans"
  homepage "https://github.com/calcom/font"

  font "fonts/otf/CalSans-SemiBold.otf"

  # No zap stanza required
end
