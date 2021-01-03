cask "klogg" do
  version "20.12.0.813"
  sha256 "a1814e017aed78d3a75071e5416563c10628035d949783537acd176b62783e1e"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX.dmg"
  appcast "https://github.com/variar/klogg/releases.atom"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  app "klogg.app"
end
