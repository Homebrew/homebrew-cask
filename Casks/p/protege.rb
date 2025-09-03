cask "protege" do
  version "5.6.8"
  sha256 "e05bc5ac73511c7b7485762bbcd1221ff9187d9115ab4aedd8e43f46d948e2d0"

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
