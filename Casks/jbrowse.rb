cask "jbrowse" do
  version "1.16.10"
  sha256 "d035df40b1ec3b79287ac0efb43f7a6e1b349a2f7dd52f6b43acb89dc08bd283"

  # github.com/GMOD/jbrowse/ was verified as official when first introduced to the cask
  url "https://github.com/GMOD/jbrowse/releases/download/#{version}-release/JBrowse-#{version}-desktop-darwin-x64.zip"
  appcast "https://github.com/GMOD/jbrowse/releases.atom"
  name "jbrowse"
  desc "Genome browser"
  homepage "https://jbrowse.org/"

  app "JBrowse-#{version}-desktop-darwin-x64/JBrowse-#{version}-desktop.app"
end
