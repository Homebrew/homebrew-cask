cask "protege" do
  version "5.6.7"
  sha256 "5e40644d73469951189dbf78176b762a0c09443c64896f34339deb9764f02230"

  url "https://github.com/protegeproject/protege-distribution/releases/download/protege-#{version}/Protege-#{version}-mac.zip",
      verified: "github.com/protegeproject/protege-distribution/"
  name "Protégé"
  desc "Ontology editor"
  homepage "https://protege.stanford.edu/"

  disable! date: "2026-09-01", because: :unsigned

  app "Protege-#{version}/Protégé.app"

  zap trash: [
    "~/.Protege",
    "~/Library/Preferences/protege_preferences.*",
    "~/Library/Saved Application State/edu.stanford.protege.savedState",
  ]
end
