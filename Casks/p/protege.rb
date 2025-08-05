cask "protege" do
  version "5.6.6"
  sha256 "dcef7020ea1c42030d35f756ec5375d46fe10558e5e63322ece1044d3897336c"

  url "https://github.com/protegeproject/protege-distribution/releases/download/protege-#{version}/Protege-#{version}-mac.zip",
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
