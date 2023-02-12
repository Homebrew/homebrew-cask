cask "protege" do
  version "5.6.0"
  sha256 "19408c35153994576f72be4ce7e11b2ec745dcc6764d01790440de233bd5e354"

  url "https://github.com/protegeproject/protege-distribution/releases/download/protege-#{version}/Protege-#{version}-os-x.zip",
      verified: "github.com/protegeproject/protege-distribution/"
  name "Protégé"
  desc "Ontology editor"
  homepage "https://protege.stanford.edu/"

  app "Protege-#{version}/Protégé.app"
end
