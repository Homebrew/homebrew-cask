cask "grid-clock" do
  version "0.0.5"
  sha256 "eb9f5b480308786ca2a7277c727d6b3478563c68bf883305f99976682dc23ee9"

  url "https://github.com/chrstphrknwtn/grid-clock-screensaver/releases/download/#{version}/Grid.Clock.#{version}.saver.zip"
  name "Grid Clock Screensaver"
  homepage "https://github.com/chrstphrknwtn/grid-clock-screensaver"

  disable! date: "2026-10-12", because: :fails_gatekeeper_check

  depends_on :macos

  screen_saver "Grid Clock.saver"

  zap :not_required
end
