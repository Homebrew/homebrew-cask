cask "grid-clock" do
  version "0.0.5"
  sha256 "eb9f5b480308786ca2a7277c727d6b3478563c68bf883305f99976682dc23ee9"

  url "https://github.com/chrstphrknwtn/grid-clock-screensaver/releases/download/#{version}/Grid.Clock.#{version}.saver.zip"
  name "Grid Clock Screensaver"
  homepage "https://github.com/chrstphrknwtn/grid-clock-screensaver"

  livecheck do
    url :url
    strategy :git
  end

  screen_saver "Grid Clock.saver"
end
