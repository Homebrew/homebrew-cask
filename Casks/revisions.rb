cask "revisions" do
  version "3.0.1"
  sha256 "3ba2adf68b799444b0a72f37d885e205e037de48fa40ee5dfcb694f1995b4823"

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  name "Revisions"
  homepage "https://revisionsapp.com/"

  livecheck do
    url "https://revisionsapp.com/releases"
    strategy :page_match
    regex(%r{href=.*?/revisions-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Revisions.app"
end
