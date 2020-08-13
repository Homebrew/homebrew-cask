cask "protege" do
  version "5.5.0"
  sha256 "9975fd2e361e70e5ed76f0278ec03d8ec23455b0aa70027276b169823a3b08b8"

  # github.com/protegeproject/protege-distribution/ was verified as official when first introduced to the cask
  url "https://github.com/protegeproject/protege-distribution/releases/download/v#{version}/Protege-#{version}-os-x.zip"
  appcast "https://github.com/protegeproject/protege-distribution/releases.atom"
  name "Protégé"
  homepage "https://protege.stanford.edu/"

  app "Protege-#{version}/Protégé.app"
end
