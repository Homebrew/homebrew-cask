cask "klogg" do
  version "20.12.0.808"
  sha256 "e6c6ad913cde26ff7f570fa36c013efe816fe25a0159c88053345715b14ee345"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX.dmg"
  appcast "https://github.com/variar/klogg/releases.atom"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  app "klogg.app"
end
