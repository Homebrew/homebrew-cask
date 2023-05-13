cask "protege" do
  version "5.6.1"
  sha256 "1cb7af245c514c5b7587ca64b3d6d6ea02254e2c056f54a1d2939fef3d860126"

  url "https://github.com/protegeproject/protege-distribution/releases/download/protege-#{version}/Protege-#{version}-os-x.zip",
      verified: "github.com/protegeproject/protege-distribution/"
  name "Protégé"
  desc "Ontology editor"
  homepage "https://protege.stanford.edu/"

  app "Protege-#{version}/Protégé.app"

  zap trash: [
    "~/.Protege",
    "~/Library/Preferences/protege_preferences.*",
    "~/Library/Saved Application State/edu.stanford.protege.savedState",
  ]
end
