cask "jbrowse" do
  version "1.16.11"
  sha256 "bb143112ed8a7ff16548d57d95faa91a5f33ab44d75db0c1790ba7bf27da0272"

  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip",
      verified: "github.com/GMOD/jbrowse/"
  appcast "https://github.com/GMOD/jbrowse/releases.atom"
  name "jbrowse"
  desc "Genome browser"
  homepage "https://jbrowse.org/"

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
