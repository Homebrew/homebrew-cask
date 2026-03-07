cask "protege" do
  version "5.6.9"
  sha256 "a3037b38dbdbf8c4cb49ae6d883542c93a9c5f58f17b5c3121b44dee29a428e7"

  url "https://github.com/protegeproject/protege-distribution/releases/download/protege-#{version}/Protege-#{version}-mac.zip",
      verified: "github.com/protegeproject/protege-distribution/"
  name "Protégé"
  desc "Ontology editor"
  homepage "https://protege.stanford.edu/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Protege-#{version}/Protégé.app"

  zap trash: [
    "~/.Protege",
    "~/Library/Preferences/protege_preferences.*",
    "~/Library/Saved Application State/edu.stanford.protege.savedState",
  ]
end
