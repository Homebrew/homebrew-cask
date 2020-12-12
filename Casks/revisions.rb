cask "revisions" do
  version "3.0.1"
  sha256 "3ba2adf68b799444b0a72f37d885e205e037de48fa40ee5dfcb694f1995b4823"

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  appcast "https://revisionsapp.com/releases"
  name "Revisions"
  homepage "https://revisionsapp.com/"

  app "Revisions.app"
end
